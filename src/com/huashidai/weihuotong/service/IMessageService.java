package com.huashidai.weihuotong.service;

import java.util.Map;

import com.huashidai.weihuotong.domain.Message;
import com.huashidai.weihuotong.query.MessageQuery;
import com.huashidai.weihuotong.query.PageResult;


public interface IMessageService {
	/**
	 * 添加
	 */
	void save(Message message);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Message get(Long id);
	
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Message> query(MessageQuery qu);
	/**
	 * APP封装好的数据
	 * @param qu
	 * @return
	 */
	Map<String, Object> queryMap(MessageQuery qu);
	/**
	 * 查看消息
	 * @param messageId
	 * @return
	 */
	Map<String, Object> enterMessage(Long messageId);
	/**
	 *  查询总数
	 * @param qu
	 * @return
	 */
	Map<String, Object> queryTotal(MessageQuery qu);
	/**
	 * 创建消息
	 * @param storeId
	 * @param title
	 * @param content
	 */
	void createMessage(Long storeId,String title,String content);
}
