package com.huashidai.weihuotong.query;

import java.text.ParseException;
import java.util.Date;

public class GoodsQuery extends BaseQuery {
	private String goodsName;// 商品名,模糊查询
	private Date uptime;// 上架时间
	private Integer state = -99;//状态
	private Long storeId = -1l;// 店铺id
	private Long typeId = -1l;// 类型id
	private Long brandId = -1l;// 品牌id
	
	private Integer saleNum = 0;//销量
	private Long parentId =-1L;//一级类型

	/**
	 * 排序 0不排序 -1上架时间升序,1上架时间降序,2销量降序,-3价格升序,3价格降序,4热度降序
	 * 
	 */
	private Integer sort = 1;

	public void setUptime(String uptime) {
		try {
			Date date = sdf.parse(uptime);
			this.uptime = date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public Date getUptime() {
		return uptime;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public void setUptime(Date uptime) {
		this.uptime = uptime;
	}

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	
	

	public Long getBrandId() {
		return brandId;
	}

	public void setBrandId(Long brandId) {
		this.brandId = brandId;
	}
	

	public Integer getSaleNum() {
		return saleNum;
	}

	public void setSaleNum(Integer saleNum) {
		this.saleNum = saleNum;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	@Override
	public String toString() {
		return super.toString() + goodsName + "," + uptime + "," + state + "," + storeId + ","
				+ typeId + "," + brandId + "," + saleNum + "," + parentId
				+ "," + sort;
	}
}