package com.huashidai.weihuotong.mapper;

import java.util.List;

import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.query.SystemLogQuery;

public interface SystemLogMapper {
	void save(SystemLog systemLog);
	SystemLog get(Long id);
	
	
	List<SystemLog> query(SystemLogQuery q);
	
	Long queryTotal(SystemLogQuery q);
}
