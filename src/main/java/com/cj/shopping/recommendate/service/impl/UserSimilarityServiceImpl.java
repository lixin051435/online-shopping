package com.cj.shopping.recommendate.service.impl;

import java.util.List;

import com.cj.shopping.recommendate.dao.UserSimilarityDAO;
import com.cj.shopping.recommendate.mapper.UserSimilarityMapper;
import com.cj.shopping.recommendate.service.UserSimilarityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 类描述：对用户之间的相似度进行增删改查的服务实现类
 * 类名称：UserSimilarityServiceImpl
 */
@Service("userSimilarityService")
public class UserSimilarityServiceImpl implements UserSimilarityService {

	@Autowired
	private UserSimilarityMapper userSimilarityMapper;

	@Override
	public boolean saveUserSimilarity(UserSimilarityDAO userSimilarityDAO) {
		boolean flag = false;
		
		int rows = this.userSimilarityMapper.saveUserSimilarity(userSimilarityDAO);
		if (rows > 0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean updateUserSimilarity(UserSimilarityDAO userSimilarityDAO) {
		boolean flag = false;
		
		int rows = this.userSimilarityMapper.updateUserSimilarity(userSimilarityDAO);
		if (rows > 0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean isExistsUserSimilarity(UserSimilarityDAO userSimilarityDAO) {
		int count = this.userSimilarityMapper.countUserSimilarity(userSimilarityDAO);
		if (count > 0) {
			return true;
		}
		return false;
	}
	
	@Override
	public List<UserSimilarityDAO> listUserSimilarityByUId(Long userId) {
		if (userId == null) {
			return null;
		}
		List<UserSimilarityDAO> userSimilarityList = this.userSimilarityMapper.listUserSimilarityByUId(userId);
		
		return userSimilarityList;
	}

}
