package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 平台系统账户 
 * @author Administrator
 */
public class SystemAccount implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1923130603826243872L;

	/** 系统账户余额 */
    private BigDecimal balance  = ConstUtil.ZERO;
    
	private Long version = 0l;//版本号

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public Long getVersion() {
		return version;
	}

	public void setVersion(Long version) {
		this.version = version;
	}
	
}