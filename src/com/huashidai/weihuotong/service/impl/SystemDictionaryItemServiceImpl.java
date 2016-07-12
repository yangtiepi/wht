package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemDictionaryItem;
import com.huashidai.weihuotong.mapper.SystemDictionaryItemMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.ISystemDictionaryItemService;

@Service
public class SystemDictionaryItemServiceImpl implements
		ISystemDictionaryItemService {
	@Autowired
	private SystemDictionaryItemMapper systemDictionaryItemMapper;

	@Cacheable
	@Override
	public SystemDictionaryItem get(Long id) {
		return systemDictionaryItemMapper.get(id);
	}

	@CacheEvict
	@Override
	public void save(SystemDictionaryItem systemDictionaryItem) {
		systemDictionaryItemMapper.save(systemDictionaryItem);

	}

	@CacheEvict
	@Override
	public void update(SystemDictionaryItem systemDictionaryItem) {
		systemDictionaryItemMapper.update(systemDictionaryItem);

	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		systemDictionaryItemMapper.delete(id);

	}

	@Cacheable
	@Override
	public List<SystemDictionaryItem> getAll() {
		return systemDictionaryItemMapper.getAll();
	}

	@Cacheable
	@Override
	public List<SystemDictionaryItem> getByParent(Long id) {
		return systemDictionaryItemMapper.getByParent(id);
	}

}