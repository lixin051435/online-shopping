package com.cj.shopping.recommendate.test;

import com.cj.shopping.recommendate.dao.UserActiveDAO;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cj.shopping.recommendate.mapper.UserActiveMapper;

/**
 * 类描述：用与测试UserActiveMapper接口的一些方法
 * 类名称：UserActiveMapperTest
 */
public class UserActiveMapperTest {

	private ClassPathXmlApplicationContext application;
	
	@Before
	public void init() {
		application = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	
	/**
	 * 测试统计某个用户的行为记录的条数
	 */
	@Test
	public void testCountUserActive() {
		UserActiveMapper userActiveMapper = (UserActiveMapper) application.getBean("userActiveMapper");
		UserActiveDAO userActiveDAO = new UserActiveDAO();
		userActiveDAO.setUserId(1L);
		userActiveDAO.setCategory2Id(35L);
		userActiveDAO.setHits(10000L);
		int rows = userActiveMapper.countUserActive(userActiveDAO);
		if (rows >= 1) {
			System.out.println("存在用户id为：" + userActiveDAO.getUserId() +
				",二级类目id为：" + userActiveDAO.getCategory2Id() + "用户行为记录");
		}
	}
	
	/**
	 * 测试统计某个用户的行为记录的条数
	 */
	@Test
	public void testGetHitsOfUser() {
		UserActiveMapper userActiveMapper = (UserActiveMapper) application.getBean("userActiveMapper");
		UserActiveDAO userActiveDAO = new UserActiveDAO();
		Long userId = 1L;
		Long category2Id = 24L;
		userActiveDAO.setUserId(userId);
		userActiveDAO.setCategory2Id(category2Id);
		
		int hits = userActiveMapper.getHitsByUserActiveInfo(userActiveDAO);
		
		System.out.println("用户id为：" + userId + "，二级类目id为：" + category2Id + "的点击量为：" + hits);
		
	}
	
	/**
	 * 测试更新某个用户对某个二级类目的点击量
	 */
	@Test
	public void testUpdateHitsOfUser() {
		UserActiveMapper userActiveMapper = (UserActiveMapper) application.getBean("userActiveMapper");
		UserActiveDAO userActiveDAO = new UserActiveDAO();
		Long userId = 1L;
		Long category2Id = 24L;
		Long hits = 12001L;
		userActiveDAO.setUserId(userId);
		userActiveDAO.setCategory2Id(category2Id);
		userActiveDAO.setHits(hits);;
		
		int rows = userActiveMapper.updateUserActive(userActiveDAO);
		
		if (rows > 0) {
			System.out.println("更新用户的点击量成功!");
		} else {
			System.out.println("更新用户的点击量失败!");
		}
	}
}
