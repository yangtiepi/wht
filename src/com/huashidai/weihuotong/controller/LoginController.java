package com.huashidai.weihuotong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.domain.Permission;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.service.IEmployeeService;
import com.huashidai.weihuotong.service.IPermissionService;
import com.huashidai.weihuotong.utils.AjaxResult;
import com.huashidai.weihuotong.utils.UserContext;

@Controller
public class LoginController {
	@Autowired
	private IEmployeeService service;
	@Autowired
	private IPermissionService permissionService;

	@RequestMapping("/checkLogin")
	@ResponseBody
	public AjaxResult checkLogin(String username, String password,
			Boolean rememberName, Boolean rememberPassword, String randomCode) {

		AjaxResult ajaxResult = null;
		try {
			// 检查登陆
			Employee emp = service.findcheckLogin(username, password,
					rememberName, rememberPassword, randomCode);
			// 将权限放入session中
			List<Permission> permission = permissionService
					.getUserPermission(emp);
			UserContext.setUserPermission(permission);
			// 注册session
			UserContext.setEmployee(emp);
			// 封装响应信息
			ajaxResult = new AjaxResult();
		} catch (LogicException e) {
			// 封装响应信息
			ajaxResult = new AjaxResult(e.getMessage(), e.getErrorCode());
		}
		return ajaxResult;
	}

	@RequestMapping("/logout")
	public String logout() {
		service.logout();
		return "redirect:/index.jsp";
	}

	/**
	 * 进入首页
	 */
	@RequestMapping("/main")
	public String mian() {
		return "forward:/WEB-INF/pages/main.jsp";
	}
}
