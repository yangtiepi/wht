package com.huashidai.weihuotong.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.domain.MarginOrder;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.domain.SystemAccount;
import com.huashidai.weihuotong.mapper.MarginOrderMapper;
import com.huashidai.weihuotong.query.MarginOrderQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IAccountService;
import com.huashidai.weihuotong.service.IMarginOrderService;
import com.huashidai.weihuotong.service.IMessageService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.service.ISystemAccountFlowService;
import com.huashidai.weihuotong.service.ISystemAccountService;
import com.huashidai.weihuotong.utils.ConstUtil;
import com.huashidai.weihuotong.utils.OrderNumUtil;

@Service
public class MarginOrderServiceImpl implements IMarginOrderService {

	@Autowired
	private MarginOrderMapper marginOrderMapper;
	@Autowired
	private IStoreService storeService;
	@Autowired
	private ISystemAccountService systemAccountService;
	@Autowired
	private ISystemAccountFlowService systemAccountFlowService;
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IMessageService messageService;

	@Override
	public Map<String, Object> createOrderNum(Long storeId) {
		Map<String, Object> map = new HashMap<String, Object>();
		String orderNum = OrderNumUtil.MARGIN_PRE
				+ OrderNumUtil.getOrderNum(storeId);
		map.put("orderNum", orderNum);
		return map;
	}

	@CacheEvict
	@Override
	public void completeOrder(BigDecimal amount, Long id, String orderNum) {
		Store store = storeService.get(id);
		// 保存订单信息
		MarginOrder marginOrder = new MarginOrder(new Date(), orderNum, amount,
				amount, store);
		marginOrderMapper.save(marginOrder);
		// 修改店铺信息
		storeService.updateMargin(amount.intValue(), id);
		// 创建系统流水
		Account account = accountService.getByStore(id);
		SystemAccount systemAccount = systemAccountService.update(amount);
		systemAccountFlowService.createSystemAccountFlow(
				ConstUtil.SYSTEMACCOUNT_ACTIONTYPE_PROMOTION, amount,
				systemAccount, store.getName() + "缴纳保证金", account);
		// 生成店铺消息
		messageService.createMessage(store.getId(), "缴纳成功",
				"缴纳保证金成功！");

	}

	@Cacheable
	@Override
	public MarginOrder getByOrderNum(String orderNum) {
		return marginOrderMapper.getByOrderNum(orderNum);
	}

	@Cacheable
	@Override
	public PageResult<MarginOrder> query(MarginOrderQuery qu) {
		// 统计查询
		Long total = marginOrderMapper.queryTotal(qu);
		// 分页查询
		List<MarginOrder> rows = marginOrderMapper.query(qu);
		return new PageResult<MarginOrder>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

}
