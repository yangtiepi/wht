package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.Withdraw;
import com.huashidai.weihuotong.query.WithdrawQuery;

public interface WithdrawMapper {

	void save(Withdraw withdraw);

	Withdraw get(Long id);

	List<Withdraw> getByAccount(Long accountId);

	void delete(Long id);
	
	/**
	 * 高级查询
	 */
	List<Withdraw> query(WithdrawQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(WithdrawQuery qu);
	/**
	 * 更新
	 * @param withdraw
	 */
	void update(Withdraw withdraw);

}