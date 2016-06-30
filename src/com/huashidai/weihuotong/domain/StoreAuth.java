package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

public class StoreAuth implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 6409187037978919029L;
	private Long id;
    private String linkman;// 经营者
    private String idCard1;// 身份证正面图片
	private String idCard2;// 身份证反面图片
	private String otherCard1;// 其他证件图片
	private String otherCard2;
	private String otherCard3;
	private String otherCard4;
	private Store store;//关联的店铺
    
    /**
     * 申请时间
     */
    private Date applyTime = new Date();
    
    /**
     * 审核的状态
     * 0 录入状态
     * 1 审核通过
     * -1 审核失败
     */
    private int state = 0;
    
    /**
     * 审核的备注
     */
    private String remark;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIdCard1() {
		return idCard1;
	}

	public void setIdCard1(String idCard1) {
		this.idCard1 = idCard1;
	}

	public String getIdCard2() {
		return idCard2;
	}

	public void setIdCard2(String idCard2) {
		this.idCard2 = idCard2;
	}

	public String getOtherCard1() {
		return otherCard1;
	}

	public void setOtherCard1(String otherCard1) {
		this.otherCard1 = otherCard1;
	}

	public String getOtherCard2() {
		return otherCard2;
	}

	public void setOtherCard2(String otherCard2) {
		this.otherCard2 = otherCard2;
	}

	public String getOtherCard3() {
		return otherCard3;
	}

	public void setOtherCard3(String otherCard3) {
		this.otherCard3 = otherCard3;
	}

	public String getOtherCard4() {
		return otherCard4;
	}

	public void setOtherCard4(String otherCard4) {
		this.otherCard4 = otherCard4;
	}

	public Date getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	

	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Override
	public String toString() {
		return "StoreAuthInfo [id=" + id + ", linkman=" + linkman
				+ ", idCard1=" + idCard1 + ", idCard2=" + idCard2
				+ ", otherCard1=" + otherCard1 + ", otherCard2=" + otherCard2
				+ ", otherCard3=" + otherCard3 + ", otherCard4=" + otherCard4
				+ ", store=" + store + ", applyTime=" + applyTime + ", state="
				+ state + ", remark=" + remark + "]";
	}
	
	
}