package com.huashidai.weihuotong.service;

import java.util.List;

import com.huashidai.weihuotong.domain.Province;

public interface IProvinceService {

	Province get(Long id);

	Province getByCity(Long cityId);

	List<Province> getAll();
}
