package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.Type;
import com.huashidai.weihuotong.query.TypeQuery;

public interface TypeMapper {
	/**
	 * 添加
	 */
	void save(Type type);
	/**
	 * 更新
	 */
	void update(Type type);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Type get(Long id);
	/**
	 * 查询所有
	 */
	List<Type> getAll();
	/**
	 * 根据父类型id获取
	 */
	List<Type> getByParent(@Param("parentId")Long parentId);
	
	/**
	 * 高级查询
	 */
	List<Type> query(TypeQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(TypeQuery qu);
}
