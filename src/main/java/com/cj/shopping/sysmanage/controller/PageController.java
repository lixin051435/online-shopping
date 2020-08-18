package com.cj.shopping.sysmanage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 类描述：处理管理平台手风琴菜单的页面跳转
 * 类名称：PageController
 */
@Controller
@RequestMapping(value="/sysmgr")
public class PageController {

	/**
	 * 处理跳转到首页的请求
	 * @return
	 */
	@RequestMapping(value="/home")
	public String gotoHome() {
		return "/sysmanage/main/home";
	}
	
}
