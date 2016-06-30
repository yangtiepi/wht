package com.huashidai.weihuotong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.SystemLog;
import com.huashidai.weihuotong.mapper.SystemLogMapper;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.SystemLogQuery;
import com.huashidai.weihuotong.service.ISystemLogService;

@Service
public class SystemLogServiceImpl implements ISystemLogService {
	@Autowired
	private SystemLogMapper systemLogMapper;

	@Override
	public void save(SystemLog systemLog) {
		systemLogMapper.save(systemLog);
	}

	@Override
	public SystemLog get(Long id) {
		return systemLogMapper.get(id);
	}

	@Override
	public PageResult<SystemLog> query(SystemLogQuery qu) {
		// 统计查询
		Long total = systemLogMapper.queryTotal(qu);
		// 分页查询
		List<SystemLog> rows = systemLogMapper.query(qu);
		return new PageResult<SystemLog>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}
}
