package com.cj.shopping.recommendate.service;

import java.util.List;

import com.cj.shopping.recommendate.dao.UserSimilarityDAO;

/**
 * 类描述：对用户之间的相似度进行增删改查的服务接口
 * 类名称：UserSimilarityService
 */
public interface UserSimilarityService {

	/**
	 * 新增用户相似度数据
	 * @paramuserSimilarityDAO 用户相似度数据
	 * @return true则新增用户相似度成功，false则失败
	 */
	boolean saveUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 更新用户相似度数据
	 * @paramuserSimilarityDAO 用户相似度数据
	 * @return 受影响到的行数，0表示影响0行，1表示影响1行
	 */
	boolean updateUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 判断某两个用户之间的相似度是否已经存在
	 * @paramuserSimilarityDAO 存储两个用户的id
	 * @return true表示已经存在，false表示不存在
	 */
	boolean isExistsUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 查询某个用户与其他用户之间的相似度列表
	 * @param userId 带查询的用户id
	 * @return 该用户与其他用户的相似度列表
	 */
	List<UserSimilarityDAO> listUserSimilarityByUId(Long userId);
	
}
