package com.cj.shopping.recommendate.test;

import java.util.List;

import com.cj.shopping.recommendate.dao.UserActiveDAO;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cj.shopping.recommendate.service.UserActiveService;

/**
 * 类描述：用与测试UserActiveService接口的一些方法
 * 类名称：UserActiveServiceTest
 */
public class UserActiveServiceTest {

	private ClassPathXmlApplicationContext application;
	
	@Before
	public void init() {
		application = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	
	/**
	 * 测试查询所有的用户行为
	 */
	@Test
	public void testListAllUserActive() {
		UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
		
		List<UserActiveDAO> userActiveDAOList = userActiveService.listAllUserActive();
		
		System.out.println(userActiveDAOList.size());
		
	}
	
	/**
	 * 测试更新用户行为数据
	 */
	@Test
	public void testSaveUserActive() {
		UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
		
		UserActiveDAO userActiveDAO = new UserActiveDAO();
		userActiveDAO.setUserId(1L);
		userActiveDAO.setCategory2Id(1111L);
		userActiveDAO.setHits(10000L);
		boolean flag = userActiveService.saveUserActive(userActiveDAO);
		if (flag) {
			System.out.println("更新用户行为数据成功!!!");
		}
	}
	
}
