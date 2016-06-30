package com.huashidai.weihuotong.query;

public class MessageQuery extends BaseQuery {
	/**
	 * 商家id
	 */
	private Long storeId = -1L;
	private Integer isLook = -99;

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public Integer getIsLook() {
		return isLook;
	}

	public void setIsLook(Integer isLook) {
		this.isLook = isLook;
	}

	@Override
	public String toString() {
		return super.toString() + storeId + "," + isLook;
	}

}
