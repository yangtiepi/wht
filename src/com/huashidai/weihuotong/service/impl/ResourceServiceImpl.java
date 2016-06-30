package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Resource;
import com.huashidai.weihuotong.mapper.ResourceMapper;
import com.huashidai.weihuotong.service.IResourceService;

@Service
public class ResourceServiceImpl implements IResourceService {

	@Autowired
	ResourceMapper resourceMapper;

	@Override
	public void save(Resource resource) {
		resourceMapper.save(resource);
	}

	@Override
	public void update(Resource resource) {
		resourceMapper.update(resource);
	}

	@Override
	public void delete(Long id) {
		resourceMapper.delete(id);
	}

	@Override
	public List<Resource> getAll() {
		List<Resource> all = resourceMapper.getAll();
		return all;
	}

	@Override
	public Resource get(Long id) {
		return resourceMapper.get(id);
	}

}
