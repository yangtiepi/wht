package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Type;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.TypeQuery;

public interface ITypeService {
	/**
	 * 添加
	 */
	void save(MultipartFile image,Type type) throws IOException;
	/**
	 * 更新
	 */
	void update(MultipartFile image,Type type) throws IOException;
	/**
	 * 删除
	 */
	void delete(Long id);

	/**
	 * 根据父类型id获取
	 */
	List<Type> getByParent(Long parentId);
	
	/**
	 * 获取一级分类下的所有分类明细
	 */
	List<Object> getItemByParent(Long parentId);
	/**
	 * 获取下级分类
	 */
	List<Object> typesByParent(Long parentId);
	
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Type> query(TypeQuery qu);
}