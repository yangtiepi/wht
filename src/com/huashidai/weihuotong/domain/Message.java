package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

import com.huashidai.weihuotong.utils.ConstUtil;
/**
 * 用户消息
 * @author ozil
 *
 */
public class Message implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4351176668230825567L;
	private Long id;
	private Long storeId;
	private Date time;
	private String title;
	private String content;
	private Integer isLook = ConstUtil.MESSAGE_UNLOOK;

	
	
	public Message() {
	}

	public Message(Long storeId, Date time, String title, String content) {
		this.storeId = storeId;
		this.time = time;
		this.title = title;
		this.content = content;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	public Integer getIsLook() {
		return isLook;
	}

	public void setIsLook(Integer isLook) {
		this.isLook = isLook;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", storeId=" + storeId + ", time=" + time
				+ ", title=" + title + ", content=" + content + ", isLook="
				+ isLook + "]";
	}
}