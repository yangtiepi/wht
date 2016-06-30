package com.huashidai.weihuotong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.Account;
import com.huashidai.weihuotong.query.AccountQuery;

public interface AccountMapper {

    void save(Account account);
    
    int update(Account account);
    
    Account get(Long id);
    
    Account getByUser(@Param("userId")Long userId);
    
    Account getByStore(@Param("storeId")Long storeId);
    
    /**
	 * 高级查询
	 */
	List<Account> query(AccountQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(AccountQuery qu);
}