package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.huashidai.weihuotong.utils.ConstUtil;

/**
 * 商品
 * */
public class Goods implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8809879791803617318L;
	private Long id;
	private String name;
	private String goodsNum;// 货号
	private String details; // 商品详情
	private BigDecimal postage = ConstUtil.ZERO;// 邮费
	private BigDecimal price;// 市场价
	private BigDecimal salePrice;// 分销价
	private Integer proxyNum = 0 ;// 分销量(热度)
	private Integer saleNum = 0;// 销量(销量)
	private Integer state = ConstUtil.GOODS_NORMAL;// 状态(0下架,1销售中,2已售罄)
	private Date time;// 上架时间
	private Integer inventoryNum = 0;// 库存
	private String image;//商品封面图片
	
	private String remark;//备注

	private Brand brand;// 品牌
	private Type type; // 类型
	private Store store;// 销售店铺

	// 展示图片,第一张用作封面
	private List<BannerImage> bannerImages;
	// 商品详情图片
	private List<DetailsImage> detailsImages;
	
	private Long version = 0l;//版本号

	/**
	 * 修改转发量
	 * 
	 * @return
	 */
	public void addProxyNum(Integer proxyNum) {
		this.proxyNum = getProxyNum() + proxyNum;
	}
	/**
	 * 修改销量
	 * 
	 * @return
	 */
	public void addSaleNum(Integer saleNum) {
		this.saleNum = getSaleNum() + saleNum;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public BigDecimal getPostage() {
		return postage;
	}

	public void setPostage(BigDecimal postage) {
		this.postage = postage;
	}

	public Integer getProxyNum() {
		return proxyNum;
	}

	public void setProxyNum(Integer proxyNum) {
		this.proxyNum = proxyNum;
	}

	public Integer getSaleNum() {
		return saleNum;
	}

	public void setSaleNum(Integer saleNum) {
		this.saleNum = saleNum;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public List<BannerImage> getBannerImages() {
		return bannerImages;
	}

	public void setBannerImages(List<BannerImage> bannerImages) {
		this.bannerImages = bannerImages;
	}

	public List<DetailsImage> getDetailsImages() {
		return detailsImages;
	}

	public void setDetailsImages(List<DetailsImage> detailsImages) {
		this.detailsImages = detailsImages;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getInventoryNum() {
		return inventoryNum;
	}
	public void setInventoryNum(Integer inventoryNum) {
		this.inventoryNum = inventoryNum;
	}
	
	
	

	public Long getVersion() {
		return version;
	}
	public void setVersion(Long version) {
		this.version = version;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", goodsNum=" + goodsNum
				+ ", details=" + details + ", postage=" + postage + ", price="
				+ price + ", salePrice=" + salePrice + ", proxyNum=" + proxyNum
				+ ", saleNum=" + saleNum + ", state=" + state + ", time="
				+ time + ", inventoryNum=" + inventoryNum + ", image=" + image
				+ ", version=" + version + "]";
	}

	public Goods(Long id) {
		super();
		this.id = id;
	}

	public Goods() {
	}

}
