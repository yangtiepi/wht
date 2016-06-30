package com.huashidai.weihuotong.query;


/**
 * 封装查询对象
 */
public class EmployeeQuery extends BaseQuery{
	private String employeeName;
	private Long roleId;
	private Integer state=-99;
	
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return super.toString() + employeeName + "," + roleId + "," + state;
	}
	
}
