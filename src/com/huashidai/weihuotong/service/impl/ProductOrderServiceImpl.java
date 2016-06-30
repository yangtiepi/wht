package com.huashidai.weihuotong.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.Address;
import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.domain.Goods;
import com.huashidai.weihuotong.domain.Product;
import com.huashidai.weihuotong.domain.ProductOrder;
import com.huashidai.weihuotong.domain.ProductOrderItem;
import com.huashidai.weihuotong.domain.ProxyGoods;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.TotalOrder;
import com.huashidai.weihuotong.domain.User;
import com.huashidai.weihuotong.domain.paramList.ProductOrderItemList;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.mapper.ProductOrderItemMapper;
import com.huashidai.weihuotong.mapper.ProductOrderMapper;
import com.huashidai.weihuotong.mapper.TotalOrderMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.ProductOrderQuery;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IAccountFlowService;
import com.huashidai.weihuotong.service.IAccountService;
import com.huashidai.weihuotong.service.IAddressService;
import com.huashidai.weihuotong.service.IGoodsService;
import com.huashidai.weihuotong.service.IProductOrderService;
import com.huashidai.weihuotong.service.IProductService;
import com.huashidai.weihuotong.service.IProxyGoodsService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.service.ISystemAccountFlowService;
import com.huashidai.weihuotong.service.ISystemAccountService;
import com.huashidai.weihuotong.service.IUserService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.OrderNumUtil;
import com.huashidai.weihuotong.utils.ReadProperties;
import com.huashidai.weihuotong.utils.StateCode;

@Service
public class ProductOrderServiceImpl implements IProductOrderService {

	@Autowired
	private ProductOrderMapper productOrderMapper;
	@Autowired
	private ProductOrderItemMapper productOrderItemMapper;
	@Autowired
	private TotalOrderMapper totalOrderMapper;
	@Autowired
	private IProductService productService;
	@Autowired
	private IGoodsService goodsService;
	@Autowired
	private IAddressService addressService;
	@Autowired
	private IStoreService storeService;
	@Autowired
	private IUserService userService;
	@Autowired
	private IProxyGoodsService proxyGoodsService;
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IAccountFlowService accountFlowService;
	@Autowired
	private ISystemAccountService systemAccountService;
	@Autowired
	private ISystemAccountFlowService systemAccountFlowService;

	// @Override
	// public Map<String, Object> submitOrder(List<Map<String, String>> maps) {
	// // 总订单
	// BigDecimal totalOrderPrice = ConstUtil.ZERO;
	// BigDecimal totalOrderPay = ConstUtil.ZERO;
	// TotalOrder totalOrder = new TotalOrder();
	// // 取出用户id
	// Map<String, String> userMap = maps.get(0);
	// Long userId = Long.valueOf(userMap.get("userId"));
	// maps.remove(0);
	// // 生成总订单
	// totalOrder.setOrderNum(OrderNumUtil.getOrderNum(userId));
	// totalOrderMapper.save(totalOrder);
	// // 取出收货地址id
	// Map<String, String> addressMap = maps.get(0);
	// Long addressId = Long.valueOf(addressMap.get("addressId"));
	// // 获取收货信息
	// Address address = addressMapper.get(addressId);
	// maps.remove(0);
	//
	// while (maps.size() > 0) {
	// // 取出集合中第一个
	// Map<String, String> productMap = maps.get(0);
	// Long productId = Long.valueOf(productMap.get("productId"));
	// Product product = productMapper.get(productId);
	// Long storeId = product.getGoods().getStore().getId();
	// // 获取店铺信息
	// Store store = storeMapper.get(storeId);
	// // 生成一个商品订单
	// ProductOrder productOrder = new ProductOrder();
	// productOrder.setAddress(address);
	// productOrder.setBuyTime(new Date());
	// productOrder.setUser(new User(userId));
	// productOrder.setStore(store);
	// productOrder.setOrderNum(OrderNumUtil.getOrderNum(userId));
	// productOrder.setTotalOrder(totalOrder);
	//
	// productOrderMapper.save(productOrder);
	//
	// BigDecimal totalPrice = ConstUtil.ZERO;// 订单总价
	// BigDecimal postage = new BigDecimal(10000);// 邮费
	//
	// // 遍历集合,将店铺相同的放入订单
	// for (Iterator<Map<String, String>> it = maps.iterator(); it
	// .hasNext();) {
	// Map<String, String> map = it.next();
	// Long proId = Long.valueOf(map.get("productId"));
	// Product pro = productMapper.get(proId);
	// Goods goods = pro.getGoods();
	// Long stoId = goods.getStore().getId();
	// if (stoId == storeId) {
	// // 生成单个订单明细
	// BigDecimal price = new BigDecimal(map.get("price"));
	// BigDecimal amount = new BigDecimal(map.get("amount"));
	// Integer num = Integer.valueOf(map.get("num"));
	// // 判断库存
	// if (pro.getInventoryNum() < num) {
	// productOrderItemMapper.delete(productOrder.getId());
	// totalOrderMapper.delete(totalOrder.getId());
	// throw new LogicException(goods.getName()
	// + pro.getSpecification() + "库存不足!",
	// StateCode.GOODS_NONUM);
	// }
	// // 更新库存
	// int updateNum = productMapper.updateNum(product);
	// if (updateNum == 0) {
	// productOrderItemMapper.delete(productOrder.getId());
	// totalOrderMapper.delete(totalOrder.getId());
	// throw new LogicException(goods.getName()
	// + pro.getSpecification() + "库存不足!",
	// StateCode.GOODS_NONUM);
	// }
	//
	// ProductOrderItem item = new ProductOrderItem(price, num,
	// amount, productOrder, product);
	// productOrderItemMapper.save(item);
	//
	// // 累加订单总价
	// totalPrice = totalPrice.add(amount);
	// // 计算邮费,以最低价为邮费
	// if (postage.compareTo(goods.getPostage()) == 1) {
	// postage = goods.getPostage();
	// }
	// // 从集合去掉这条数据
	// it.remove();
	// }
	// }
	// // 设置订单其他信息
	// productOrder.setMessage("收货人:" + address.getName() + ";电话:"
	// + address.getPhone() + ";地址:" + address.getAddress()
	// + ";店铺:" + store.getName());
	// productOrder.setTotalPrice(totalPrice.add(postage));
	// productOrder.setPayPrice(totalPrice.add(postage));
	// productOrder.setPostage(postage);
	// productOrderMapper.update(productOrder);
	// // 累加总订单价格
	// totalOrderPrice = totalOrderPrice.add(productOrder.getTotalPrice());
	// totalOrderPay = totalOrderPay.add(productOrder.getPayPrice());
	// }
	// totalOrder.setTotalPrice(totalOrderPrice);
	// totalOrder.setPayPrice(totalOrderPay);
	// totalOrderMapper.update(totalOrder);
	//
	// // 封装返回的订单数据
	// Map<String, Object> map = new HashMap<String, Object>();
	// map.put("totalPrice", totalOrderPrice);
	// map.put("payPrice", totalOrderPay);
	// map.put("orderNum", totalOrder.getOrderNum());
	//
	// return map;
	// }
	@CacheEvict
	@Override
	public Map<String, Object> submitOrder(ProductOrderItemList items,
			Long userId, Long addressId, Long customerId, Long proxyGoodsId) {
		User user = null;
		Customer customer = null;
		ProxyGoods proxyGoods = null;
		String subject = "";
		String body = "";
		// 总订单
		BigDecimal totalOrderPrice = ConstUtil.ZERO;
		BigDecimal totalOrderPay = ConstUtil.ZERO;
		TotalOrder totalOrder = new TotalOrder();
		if (userId != null) {
			user = new User(userId);
			totalOrder.setOrderNum(OrderNumUtil.TOTAL_PRE
					+ OrderNumUtil.getOrderNum(userId));
		} else if (customerId != null && proxyGoodsId != null) {
			customer = new Customer(customerId);
			totalOrder.setOrderNum(OrderNumUtil.TOTAL_PRE
					+ OrderNumUtil.getOrderNum(customerId));
		}
		totalOrderMapper.save(totalOrder);
		// 获取收货信息
		Address address = addressService.get(addressId);

		List<ProductOrderItem> productOrderItems = items.getProductOrderItems();
		while (productOrderItems.size() > 0) {
			// 取出集合中第一个
			ProductOrderItem item = productOrderItems.get(0);
			Long productId = item.getProduct().getId();
			Product product = productService.get(productId);
			Long storeId = product.getGoods().getStore().getId();
			// 获取店铺信息
			Store store = storeService.get(storeId);
			// 生成一个商品订单
			ProductOrder productOrder = new ProductOrder();
			productOrder.setAddress(address);
			productOrder.setStore(store);
			Date date = new Date();
			productOrder.setBuyTime(date);
			if (userId != null) {
				productOrder.setOrderNum(OrderNumUtil.PRODUCT_PRE
						+ OrderNumUtil.getOrderNum(userId));
				productOrder.setUser(user);
			} else if (customerId != null && proxyGoodsId != null) {
				productOrder.setOrderNum(OrderNumUtil.PRODUCT_PRE
						+ OrderNumUtil.getOrderNum(customerId));
				productOrder.setCustomer(customer);
				proxyGoods = proxyGoodsService.get(proxyGoodsId);
				productOrder.setProxyUser(proxyGoods.getUser());
			}
			productOrder.setTotalOrder(totalOrder);

			productOrderMapper.save(productOrder);

			BigDecimal totalPrice = ConstUtil.ZERO;// 订单总价
			Integer productNum = 0;// 商品数量
			BigDecimal postage = new BigDecimal(10000);// 邮费
			BigDecimal proxyPrice = ConstUtil.ZERO;// 代理费用
			// 遍历集合,将店铺相同的放入订单
			for (Iterator<ProductOrderItem> it = productOrderItems.iterator(); it
					.hasNext();) {
				ProductOrderItem poi = it.next();
				BigDecimal poiNum = new BigDecimal(poi.getNum());// 订单明细商品数量

				Long proId = poi.getProduct().getId();
				Product pro = productService.get(proId);
				Goods goods = pro.getGoods();
				// 商品信息
				subject = goods.getName();
				body = goods.getDetails();

				Long stoId = goods.getStore().getId();
				BigDecimal goodsPrice = goods.getSalePrice();// 订单明细该商品价格
				// 设置订单信息
				if (customerId != null && proxyGoodsId != null) {
					BigDecimal proxyGoodsPrice = proxyGoods.getPrice();// 订单明细该商品代理价格
					poi.setPrice(proxyGoodsPrice);
					poi.setAmount(proxyGoodsPrice.multiply(poiNum));
					productOrder.setProxyUser(proxyGoods.getUser());
					proxyPrice.add(proxyGoodsPrice.subtract(goodsPrice)
							.multiply(poiNum));
				} else {
					poi.setAmount(goodsPrice.multiply(poiNum));
					poi.setPrice(goodsPrice);
				}
				// 判断是否放入订单
				if (stoId == storeId) {
					// 判断库存
					if (pro.getInventoryNum() < poi.getNum()
							|| goods.getInventoryNum() < poi.getNum()) {
						productOrderItemMapper.delete(productOrder.getId());
						totalOrderMapper.delete(totalOrder.getId());
						throw new LogicException(goods.getName()
								+ pro.getSpecification() + "库存不足!",
								StateCode.GOODS_NONUM);
					}
					// 更新库存
					Integer num = poi.getNum();
					pro.setInventoryNum(pro.getInventoryNum() - num);
					goods.setInventoryNum(goods.getInventoryNum() - num);
					int updateNum = productService.updateNum(pro);
					int updateNum2 = goodsService.updateNum(goods);
					if (updateNum == 0 || updateNum2 == 0) {
						productOrderItemMapper.delete(productOrder.getId());
						totalOrderMapper.delete(totalOrder.getId());
						throw new LogicException("系统繁忙,请重试!",
								StateCode.GOODS_NONUM);
					}
					// 增加商品销量
					goodsService.addSaleNum(num, goods.getId());
					// 增加店铺销量
					storeService.addSaleNum(num, storeId);
					// 保存订单明细
					poi.setImage(goods.getImage());
					poi.setProductName(goods.getName() + " " + pro.getName());
					poi.setProductOrder(productOrder);
					productOrderItemMapper.save(poi);

					// 累加订单总价
					totalPrice = totalPrice.add(poi.getAmount());
					productNum += poi.getNum();
					// 计算邮费,以最低价为邮费
					if (postage.compareTo(goods.getPostage()) == 1) {
						postage = goods.getPostage();
					}
					// 从集合去掉这条数据
					it.remove();
				}
			}
			// 设置订单其他信息
			productOrder.setMessage("收货人:" + address.getName() + ";电话:"
					+ address.getPhone() + ";地址:" + address.getAddress()
					+ ";店铺:" + store.getName());
			productOrder.setTotalPrice(totalPrice.add(postage));
			productOrder.setProductNum(productNum);
			productOrder.setPayPrice(totalPrice.add(postage));
			productOrder.setProxyPrice(proxyPrice);
			productOrder.setPostage(postage);
			productOrderMapper.update(productOrder);
			// 累加总订单价格
			totalOrderPrice = totalOrderPrice.add(productOrder.getTotalPrice());
			totalOrderPay = totalOrderPay.add(productOrder.getPayPrice());
		}
		totalOrder.setTotalPrice(totalOrderPrice);
		totalOrder.setPayPrice(totalOrderPay);
		totalOrderMapper.update(totalOrder);

		// 封装返回的订单数据
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("totalPrice", totalOrderPrice);
		map.put("payPrice", totalOrderPay);
		map.put("orderNum", totalOrder.getOrderNum());
		map.put("subject", subject.length() > 15 ? subject.substring(0, 15)
				: subject);
		map.put("body", body.length() > 63 ? body.substring(0, 63) : body);
		return map;
	}

	@Cacheable
	@Override
	public PageResult<ProductOrder> query(ProductOrderQuery qu) {
		// 统计查询
		Long total = productOrderMapper.queryTotal(qu);
		// 分页查询
		List<ProductOrder> rows = productOrderMapper.query(qu);
		return new PageResult<ProductOrder>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Override
	public List<ProductOrder> getByTotalOrderNum(String totalOrderNum) {
		List<ProductOrder> orders = productOrderMapper
				.getByTotalOrderNum(totalOrderNum);
		return orders;
	}

	@CacheEvict
	@Override
	public void completeOrder(ProductOrder productOrder) {
		BigDecimal totalPrice = productOrder.getTotalPrice();
		Store store = productOrder.getStore();
		User user = userService.getByStore(store.getId());// 实际卖家
		User proxyUser = productOrder.getProxyUser();// 代理人
		// 判断是否是代理订单
		if (proxyUser != null) {
			proxyUser = userService.get(proxyUser.getId());
			BigDecimal proxyPrice = productOrder.getProxyPrice();// 代理收入
			totalPrice = totalPrice.subtract(proxyPrice);// 店铺收入
			// 计算代理人及其上家收入
			BigDecimal percentage = new BigDecimal(
					ReadProperties.getPercentage());
			Integer tier = new Integer(ReadProperties.getTier());
			dividend(proxyUser, proxyPrice, percentage, tier);
		}
		// 更改订单状态
		productOrderMapper.updateState(productOrder.getId(),
				ConstUtil.ORDER_FINISH);
		// 更新店铺账户信息
		// User user = productOrder.getUser();
		Account account = accountService.updateByUser(user.getId(), totalPrice,
				ConstUtil.ACCOUNT_ACTIONTYPE_SALEINCOME);
		user.setTurnover(user.getTurnover() + 1);
		user.setAmount(user.getAmount().add(totalPrice));
		userService.update(user);
		// 创建店铺账户流水
		accountFlowService.createAccountFlow(
				ConstUtil.ACCOUNT_ACTIONTYPE_SALEINCOME, totalPrice, account,
				"销售收入");
		// 创建购买记录
		// .............................
		//
	}

	/**
	 * 计算代理提成的递归方法
	 * 
	 * @param proxyUser
	 *            代理人
	 * @param proxyPrice
	 *            代理收入
	 * @param percentage
	 *            提成比例
	 * @param tier
	 *            能够提成的上家层数
	 */
	private void dividend(User proxyUser, BigDecimal proxyPrice,
			BigDecimal percentage, Integer tier) {
		if (tier == 0) {
			return;
		}
		User user = userService.getByCode(proxyUser.getUseCode());
		if (user != null) {
			// 应得分成
			BigDecimal price = proxyPrice.subtract(proxyPrice
					.multiply(percentage));
			// 更新账户信息
			Account account = accountService.updateByUser(user.getId(), price,
					ConstUtil.ACCOUNT_ACTIONTYPE_PROXYINCOME);
			// 创建账户流水
			accountFlowService.createAccountFlow(
					ConstUtil.ACCOUNT_ACTIONTYPE_PROXYINCOME, price, account,
					"代理提成");
			// 计算上级代理提成
			dividend(user, price, percentage, tier - 1);
		}
	}

	@Cacheable
	@Override
	public Map<String, Object> queryMap(ProductOrderQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageResult<ProductOrder> result = query(qu);
		map.put("total", result.getTotalPage());
		ArrayList<Object> productOrders = new ArrayList<Object>();
		List<ProductOrder> datas = result.getRows();
		for (ProductOrder p : datas) {
			Map<String, Object> productOrder = new HashMap<String, Object>();
			Long orderId = p.getId();
			productOrder.put("productOrderId", orderId);
			productOrder.put("productOrderNum", p.getOrderNum());
			productOrder.put("payPrice", p.getPayPrice());
			productOrder.put("productNum", p.getProductNum());
			productOrder.put("buyTime", p.getBuyTime());
			productOrder.put("postage", p.getPostage());
			productOrder.put("message", p.getMessage());
			
			Address address = addressService.getByOrder(orderId);
			productOrder.put("phone", address.getPhone());
			productOrder.put("state", p.getState());
			List<ProductOrderItem> items = productOrderItemMapper
					.getByOrder(orderId);
			List<Object> its = new ArrayList<Object>();
			for (ProductOrderItem productOrderItem : items) {
				Map<String, Object> it = new HashMap<String, Object>();
				it.put("amount", productOrderItem.getAmount());
				it.put("productNum", productOrderItem.getNum());
				it.put("productName", productOrderItem.getProductName());
				it.put("image", productOrderItem.getImage());
				its.add(it);
			}
			productOrder.put("items", its);
			productOrders.add(productOrder);
		}
		map.put("productOrders", productOrders);
		return map;
	}
	

	@CacheEvict
	@Override
	public void updateOrderPrice(Long productOrderId, BigDecimal price) {
		ProductOrder productOrder = productOrderMapper.get(productOrderId);
		if (productOrder.getState() != ConstUtil.ORDER_WAIT_PAY) {
			throw new LogicException("只能修改待付款订单！",
					StateCode.PRODUCTORDER_NOTEDIT_PRICE);
		}
		productOrderMapper.updatePrice(productOrderId, price);
	}

	@CacheEvict
	@Override
	public void shipOrder(Long productOrderId) {
		updateState(productOrderId, ConstUtil.ORDER_WAIT_FINISH);

	}

	@CacheEvict
	@Override
	public void confirmOrder(Long productOrderId) {
		ProductOrder productOrder = productOrderMapper.getMap(productOrderId);
		completeOrder(productOrder);
	}

	@CacheEvict
	@Override
	public void applyReturnOrder(Long productOrderId) {
		updateState(productOrderId, ConstUtil.ORDER_WAIT);

	}

	@CacheEvict
	@Override
	public void agreeReturnOrder(Long productOrderId) {
		updateState(productOrderId, ConstUtil.ORDER_CLOSE);

	}

	@CacheEvict
	@Override
	public void delete(Long productOrderId) {
		ProductOrder productOrder = productOrderMapper.get(productOrderId);
		Integer state = productOrder.getState();
		if (state != ConstUtil.ORDER_WAIT_PAY
				&& state != ConstUtil.ORDER_FINISH) {
			throw new LogicException("不能删除正在交易订单！",
					StateCode.PRODUCTORDER_NOTDELETE);
		}
		// 删除所有明细
		productOrderItemMapper.deleteByOrder(productOrderId);
		// 删除订单
		productOrderMapper.delete(productOrderId);

	}
	@CacheEvict
	@Override
	public void cancelOrder(Long productOrderId) {
		ProductOrder productOrder = productOrderMapper.get(productOrderId);
		Integer state = productOrder.getState();
		if (state != ConstUtil.ORDER_WAIT_PAY
				&& state != ConstUtil.ORDER_FINISH) {
			throw new LogicException("不能取消正在交易订单！",
					StateCode.PRODUCTORDER_NOTCANCEL);
		}
		productOrderMapper.updateState(productOrderId, ConstUtil.ORDER_CLOSE);
	}

	@CacheEvict
	@Override
	public void updateState(Long productOrderId, Integer state) {
		productOrderMapper.updateState(productOrderId, state);
	}

	@Cacheable
	@Override
	public ProductOrder getByOrderNum(String orderNum) {
		return productOrderMapper.getByOrderNum(orderNum);
	}

	@Cacheable
	@Override
	public List<ProductOrder> getDueNotPay() {
		return productOrderMapper.getDueOrder(1, ConstUtil.ORDER_WAIT_PAY);
	}

	@Cacheable
	@Override
	public List<ProductOrder> getDueNotFinish() {
		return productOrderMapper.getDueOrder(10, ConstUtil.ORDER_WAIT_FINISH);
	}
	
	@Cacheable
	@Override
	public List<ProductOrderItem> getItem(Long orderId) {
		return productOrderItemMapper.getByOrder(orderId);
	}
}
