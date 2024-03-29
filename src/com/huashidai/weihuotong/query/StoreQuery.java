package com.huashidai.weihuotong.query;

public class StoreQuery extends BaseQuery {
	private String storeName;// 店铺名,模糊查询
	private Integer state = -99;// 状态
	private Long typeId = -1l;// 店铺分类

	/**
	 * 排序 0不排序 ,1销量降序,2热度降序
	 * 
	 */
	private Integer sort = 1;

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	@Override
	public String toString() {
		return super.toString() + storeName + ", " + state + ", " + typeId + ", " + sort;
	}

}
