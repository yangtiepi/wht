package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.Address;
import com.huashidai.weihuotong.mapper.AddressMapper;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IAddressService;

@Service
public class AddressServiceImpl implements IAddressService {
	@Autowired
	private AddressMapper addressMapper;

	@CacheEvict
	@Override
	public void save(Address address) {
		addressMapper.save(address);
		if (address.getUser() != null) {
			updateUserDefault(address.getId());
		} else if (address.getCustomer() != null) {
			updateCustomerDefault(address.getId());
		}
	}

	@CacheEvict
	@Override
	public void update(Address address) {
		addressMapper.update(address);
		addressMapper.get(address.getId());
		if (address.getUser() != null) {
			updateUserDefault(address.getId());
		} else if (address.getCustomer() != null) {
			updateCustomerDefault(address.getId());
		}
	}

	@CacheEvict
	@Override
	public void delete(Long addressId) {
		addressMapper.delete(addressId);
	}

	@CacheEvict
	@Override
	public void updateUserDefault(Long addressId) {
		Address address = addressMapper.getWithUser(addressId);
		// 修改原来的默认地址
		Address def = addressMapper.getUserDefault(address.getUser().getId());
		if (def != null) {
			def.setDefaultAddress(0);
			addressMapper.updateDefault(def);
		}
		// 设置新的默认地址
		address.setDefaultAddress(1);
		addressMapper.updateDefault(address);
	}

	@CacheEvict
	@Override
	public void updateCustomerDefault(Long addressId) {
		Address address = addressMapper.getWithCustomer(addressId);
		// 修改原来的默认地址
		Address def = addressMapper.getCustomerDefault(address.getCustomer()
				.getId());
		if (def != null) {
			def.setDefaultAddress(0);
			addressMapper.updateDefault(def);
		}
		// 设置新的默认地址
		address.setDefaultAddress(1);
		addressMapper.updateDefault(address);
	}

	@Cacheable
	@Override
	public Map<String, Object> getUserDefault(Long userId) {
		Address address = addressMapper.getUserDefault(userId);
		if (address != null) {
			return bulidMap(address);
		}
		return null;
	}

	@Cacheable
	@Override
	public List<Object> getByUser(Long userId) {
		List<Object> adds = new ArrayList<Object>();
		List<Address> ads = addressMapper.getByUser(userId);
		// 默认放在第一个
		for (Address address : ads) {
			if (address.getDefaultAddress() == 1) {
				Map<String, Object> bulidMap = bulidMap(address);
				adds.add(bulidMap);
				break;
			}
		}
		for (Address address : ads) {
			if (address.getDefaultAddress() != 1) {
				Map<String, Object> bulidMap = bulidMap(address);
				adds.add(bulidMap);
			}
		}
		return adds;
	}

	@Cacheable
	@Override
	public List<Address> getByCustomer(Long customerId) {
		List<Address> ads = addressMapper.getByCustomer(customerId);
		// 默认放在第一个
		for (int i = 0; i < ads.size(); i++) {
			if (ads.get(i).getDefaultAddress() == 1) {
				ads.add(0, ads.remove(i));
				return ads;
			}
		}
		return ads;
	}

	private Map<String, Object> bulidMap(Address address) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", address.getId());
		map.put("address", address.getAddress());
		map.put("cityId", address.getCity().getId());
		map.put("cityName", address.getCity().getName());
		map.put("defaultAddress", address.getDefaultAddress());
		map.put("name", address.getName());
		map.put("phone", address.getPhone());
		return map;
	}

	@Cacheable
	@Override
	public Address get(Long addressId) {
		return addressMapper.get(addressId);
	}

	@Override
	public Address getByOrder(Long orderId) {
		return addressMapper.getByOrder(orderId);
	}

}