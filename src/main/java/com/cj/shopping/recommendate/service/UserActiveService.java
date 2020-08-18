package com.cj.shopping.recommendate.service;

import java.util.List;

import com.cj.shopping.recommendate.dao.UserActiveDAO;

/**
 * 类描述：操作数据库中用户的行为数据的服务类
 * 类名称：UserActiveService
 */
public interface UserActiveService {

	/**
	 * 查询出所有的用户行为
	 * @return 返回用户的行为数据
	 */
	List<UserActiveDAO> listAllUserActive();
	
	/**
	 * 保存用户的浏览记录，如果用户的浏览记录存在则更新，不存在则添加
	 * @paramuserActiveDAO 用户的行为数据
	 * @return true表示更新成功，false表示更新失败
	 */
	boolean saveUserActive(UserActiveDAO userActiveDAO);
	
}
