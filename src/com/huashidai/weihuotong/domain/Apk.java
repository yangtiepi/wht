package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 安卓安装包
 * 
 * @author Administrator
 */
public class Apk implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5627582819127965483L;

	private Long id;

	private String name;// 名字
	private String versionCode;// 版本号
	private String versionName;// 版本名字
	private String src;// 下载地址
	private String note;// 备注
	private Date time;// 上传时间
	private String image;// 二维码图片

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

	public String getVersionCode() {
		return versionCode;
	}

	public void setVersionCode(String versionCode) {
		this.versionCode = versionCode;
	}

	public String getVersionName() {
		return versionName;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
