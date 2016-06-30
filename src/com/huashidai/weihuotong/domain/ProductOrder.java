package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 商品订单
 * 
 * @author ozil
 *
 */
public class ProductOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8344149544092379344L;
	private Long id;
	private Date buyTime;// 购买时间
	private String orderNum;// 订单号
	private BigDecimal postage = ConstUtil.ZERO;// 运费
	private BigDecimal totalPrice;// 商品总价
	private BigDecimal payPrice;// 实际付款金额
	private Integer productNum;// 商品数量
	private BigDecimal proxyPrice;// 代理费用
	private Integer state = 0;// 订单状态(0 待付款,1 待发货,2待收货,3完成,4交易关闭,5 维权中)
	private String message;// 收货信息和店铺信息(收货人,电话,地址,店铺名)
	private Address address;// 收货地址
	private Store store;// 关联的店铺
	private User user;// 直接购买的APP用户
	private Customer customer;// 购买代理商品的客户
	private User proxyUser;// 代理商品的APP用户
	private TotalOrder totalOrder;// 总订单

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getBuyTime() {
		return buyTime;
	}

	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public BigDecimal getPostage() {
		return postage;
	}

	public void setPostage(BigDecimal postage) {
		this.postage = postage;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public BigDecimal getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(BigDecimal payPrice) {
		this.payPrice = payPrice;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public TotalOrder getTotalOrder() {
		return totalOrder;
	}

	public void setTotalOrder(TotalOrder totalOrder) {
		this.totalOrder = totalOrder;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public BigDecimal getProxyPrice() {
		return proxyPrice;
	}

	public void setProxyPrice(BigDecimal proxyPrice) {
		this.proxyPrice = proxyPrice;
	}

	public User getProxyUser() {
		return proxyUser;
	}

	public void setProxyUser(User proxyUser) {
		this.proxyUser = proxyUser;
	}

	public Integer getProductNum() {
		return productNum;
	}

	public void setProductNum(Integer productNum) {
		this.productNum = productNum;
	}

	@Override
	public String toString() {
		return "ProductOrder [id=" + id + ", buyTime=" + buyTime
				+ ", orderNum=" + orderNum + ", postage=" + postage
				+ ", totalPrice=" + totalPrice + ", payPrice=" + payPrice
				+ ", proxyPrice=" + proxyPrice + ", state=" + state
				+ ", message=" + message + ", address=" + address + ", user="
				+ user + ", customer=" + customer + ", store=" + store
				+ ", totalOrder=" + totalOrder + "]";
	}
}
