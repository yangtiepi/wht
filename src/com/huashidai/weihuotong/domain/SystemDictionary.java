package com.huashidai.weihuotong.domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据字典
 * @author ozil
 */
public class SystemDictionary {
	private Long id;
	private String sn;//数据字典编号
	private String name;//数据字典名
	private String intro;//字典目录简介
	private String state;//状态     1正常  0停用
	
	//字典明细    一对多
	private List<SystemDictionaryItem> details = new ArrayList<>();
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public List<SystemDictionaryItem> getDetails() {
		return details;
	}
	public void setDetails(List<SystemDictionaryItem> details) {
		this.details = details;
	}
	
	
	
	@Override
	public String toString() {
		return "SystemDictionary [id=" + id + ", sn=" + sn + ", name=" + name
				+ ", intro=" + intro + ", state=" + state + ", details="
				+ details + "]";
	}
	
}
