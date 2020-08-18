package com.cj.shopping.sysmanage.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 类描述：管理员退出的控制器
 * 类名称：LogoutAdminController
 */
@Controller
public class LogoutAdminController {
	
	/**
	 * 用来打印日志
	 */
	Logger logger = Logger.getLogger(LogoutAdminController.class);
	
	/**
	 * 管理系统登录页面的uri
	 */
	private static final String LOGIN_ADMIN_URI = "loginAdmin";
	
	/**
	 * 处理退出后台管理系统的请求
	 * @return
	 */
	@RequestMapping(value="/logoutAdmin")
	public String gotoLoginAdmin(HttpSession session) {
		session.removeAttribute("admin");
		return LOGIN_ADMIN_URI;
	}
	
}
