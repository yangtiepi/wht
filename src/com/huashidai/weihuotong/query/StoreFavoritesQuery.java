package com.huashidai.weihuotong.query;

public class StoreFavoritesQuery extends BaseQuery {
	/**
	 * 用户id
	 */
	private Long userId = -1L;
	/**
	 * 店铺id
	 */
	private Long storeId = -1L;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getStoreId() {
		return storeId;
	}
	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	@Override
	public String toString() {
		return super.toString()  + userId + "," + storeId;
	}
}