package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemDictionaryItem;

public interface SystemDictionaryItemMapper {
	SystemDictionaryItem get(Long id);

	void save(SystemDictionaryItem systemDictionaryItem);

	void update(SystemDictionaryItem systemDictionaryItem);

	void delete(Long id);

	List<SystemDictionaryItem> getAll();

	List<SystemDictionaryItem> getByParent(Long id);// 获取对应数据字典目录的所有
}