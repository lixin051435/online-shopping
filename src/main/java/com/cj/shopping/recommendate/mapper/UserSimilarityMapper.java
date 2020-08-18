package com.cj.shopping.recommendate.mapper;

import java.util.List;

import com.cj.shopping.recommendate.dao.UserSimilarityDAO;

/**
 * 类描述：更新数据库中用户与用户之间的相似度
 * 类名称：UserSimilarityMapper
 */
public interface UserSimilarityMapper {

	/**
	 * 新增用户相似度数据
	 * @paramuserSimilarityDAO 用户相似度数据
	 * @return 受影响到的行数，0表示影响0行，1表示影响1行
	 */
	int saveUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 更新用户相似度数据
	 * @paramuserSimilarityDAO 用户相似度数据
	 * @return 受影响到的行数，0表示影响0行，1表示影响1行
	 */
	int updateUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 判断某两个用户之间的相似度是否已经存在
	 * @paramuserSimilarityDAO 存储两个用户的id
	 * @return 返回1表示已经存在，返回0表示不存在
	 */
	int countUserSimilarity(UserSimilarityDAO userSimilarityDAO);
	
	/**
	 * 查询某个用户与其他用户之间的相似度列表
	 * @param userId 带查询的用户id
	 * @return 该用户与其他用户的相似度列表
	 */
	List<UserSimilarityDAO> listUserSimilarityByUId(Long userId);
	
}
