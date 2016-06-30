package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Province;
import com.huashidai.weihuotong.mapper.ProvinceMapper;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IProvinceService;

@Service
public class ProvinceServiceImpl implements IProvinceService {
	@Autowired
	private ProvinceMapper provinceMapper;
	@Cacheable
	@Override
	public Province get(Long id) {
		return provinceMapper.get(id);
	}
	@Cacheable
	@Override
	public List<Province> getAll() {
		return provinceMapper.getAll();
	}


}