package com.huashidai.weihuotong.utils;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.huashidai.weihuotong.domain.Customer;
import com.huashidai.weihuotong.domain.Employee;
import com.huashidai.weihuotong.domain.Permission;

/**
 * 用户上下文对象
 * 
 * @author Administrator
 *
 */

public class UserContext {

	public static final String EMPLOYEE_IN_SESSION = "employee_in_session";
	public static final String CUSTOMER_IN_SESSION = "customer_in_session";
	public static final String PERMISSION_IN_SESSION = "permission_in_session";
	// 短信随机密码
	public static final String CUSTOMER_RANDOM_IN_SESSION = "customer_random_in_session";

	public static HttpServletRequest getRequest() {
		// 从RequestContextHolder中，获取ServletRequestAttributes
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes();
		// 从ServletRequestAttributes中，获取request
		HttpServletRequest request = requestAttributes.getRequest();
		return request;
	}

	private static HttpSession getSession() {
		return getRequest().getSession();
	}

	public static HttpServletResponse getResponse() {
		// 从RequestContextHolder中，获取ServletRequestAttributes
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes();
		// 从ServletRequestAttributes中，获取response
		HttpServletResponse response = requestAttributes.getResponse();
		return response;
	}

	public static void setEmployee(Employee emp) {
		getSession().setAttribute(EMPLOYEE_IN_SESSION, emp);
	}

	public static Employee getEmployee() {
		return (Employee) getSession().getAttribute(EMPLOYEE_IN_SESSION);
	}

	public static void removeEmployee() {
		getSession().removeAttribute(EMPLOYEE_IN_SESSION);
	}

	public static void setCustomer(Customer customer) {
		getSession().setAttribute(CUSTOMER_IN_SESSION, customer);
	}

	public static Customer getCustomer() {
		return (Customer) getSession().getAttribute(CUSTOMER_IN_SESSION);
	}

	public static void setCustomerRandom(Customer customer) {
		getSession().setAttribute(CUSTOMER_RANDOM_IN_SESSION, customer);
	}

	public static Customer getCustomerRandom() {
		return (Customer) getSession().getAttribute(CUSTOMER_RANDOM_IN_SESSION);
	}

	public static String getIP() {
		return getRequest().getRemoteAddr();
	}

	// public static void setUser(Employee emp, HttpSession session){
	// session.setAttribute(USER_IN_SESSION, emp);
	// }
	//
	// public static Employee getUser(HttpSession session){
	// return (Employee) session.getAttribute(USER_IN_SESSION);
	// }

	public static boolean checkUserPermission(Permission permission) {
		// 获取所有权限
		List<Permission> userPermissions = UserContext.getUserPermission();
		// 如果session中没有保存权限就直接返回false
		if (userPermissions == null || userPermissions.size() == 0) {
			return false;
		}
		Long permissionId = permission.getId();
		// 检查大权限
		String resourceName = permission.getResource().split(":")[0] + ":ALL";
		// 检查小权限
		for (Permission userPermission : userPermissions) {
			System.out.println("有的权限" + userPermission.getResource());
			if (permissionId.equals(userPermission.getId())
					|| resourceName.equals(userPermission.getResource())) {
				System.out
						.println("++++++++++++++++++++++有权限++++++++++++++++++++++++++++");
				return true;
			}
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public static List<Permission> getUserPermission() {
		return (List<Permission>) getRequest().getSession().getAttribute(
				PERMISSION_IN_SESSION);
	}

	public static void setUserPermission(List<Permission> permission) {
		getRequest().getSession().setAttribute(PERMISSION_IN_SESSION,
				permission);
	}

	public static String getRealPath() {
		return getRequest().getServletContext().getRealPath("");
	}
}
