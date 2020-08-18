package com.cj.shopping.recommendate.test;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import com.cj.shopping.recommendate.dao.UserActiveDAO;
import com.cj.shopping.recommendate.dao.UserSimilarityDAO;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cj.shopping.recommendate.service.UserActiveService;
import com.cj.shopping.recommendate.service.impl.UserSimilarityServiceImpl;
import com.cj.shopping.recommendate.util.RecommendUtils;
import com.cj.shopping.sysmanage.dao.ProductDAO;
import com.cj.shopping.sysmanage.entity.Product;
import com.cj.shopping.sysmanage.service.ProductService;

/**
 * 类描述：测试推荐模块中的一些功能
 * 类名称：RecommendateTest
 */
public class RecommendateTest {

    private ClassPathXmlApplicationContext application;
    
    @Before
    public void init() {
        application = new ClassPathXmlApplicationContext("applicationContext.xml");
    }
    
    /**
     * 测试列出所有用户的购买行为的方法
     */
    @Test
    public void testListAllUserActive() {
        UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
        // 1.查询出所有用户对所有二级类目的浏览记录
        List<UserActiveDAO> userActiveDAOList = userActiveService.listAllUserActive();
        
        // 2.输出浏览记录列表
        for (UserActiveDAO userActiveDAO : userActiveDAOList) {
            System.out.println(userActiveDAO.getUserId() + "\t" + userActiveDAO.getCategory2Id() + "\t" + userActiveDAO.getHits());
        }
        
    }
    
    /**
     * 测试组装用户行为数据的方法
     */
    @Test
    public void testAssembleUserBehavior() {
        UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
        // 1.查询所有的用户浏览记录
        List<UserActiveDAO> userActiveDAOList = userActiveService.listAllUserActive();
        
        // 2.调用推荐模块工具类的方法组装成一个ConcurrentHashMap来存储每个用户以及其对应的二级类目的点击量
        ConcurrentHashMap<Long, ConcurrentHashMap<Long, Long>> activeMap = RecommendUtils.assembleUserBehavior(userActiveDAOList);
        
        // 3.输出封装后的map的大小（也就是多少个用户的浏览记录）
        System.out.println(activeMap.size());
    }
    
    /**
     * 计算用户的相似度
     */
    @Test
    public void testCalcSimilarityBetweenUser() {
        UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
        UserSimilarityServiceImpl userSimilarityService = (UserSimilarityServiceImpl) application.getBean("userSimilarityService");
        // 1.查询所有的用户浏览记录
        List<UserActiveDAO> userActiveDAOList = userActiveService.listAllUserActive();
        
        // 2.调用推荐模块工具类的方法组装成一个ConcurrentHashMap来存储每个用户以及其对应的二级类目的点击量
        ConcurrentHashMap<Long, ConcurrentHashMap<Long, Long>> activeMap = RecommendUtils.assembleUserBehavior(userActiveDAOList);
        
        // 3.调用推荐模块工具类的方法计算用户与用户之间的相似度
        List<UserSimilarityDAO> similarityList = RecommendUtils.calcSimilarityBetweenUsers(activeMap);
        
        // 4.输出计算好的用户之间的相似度
        for (UserSimilarityDAO usim : similarityList) {
            System.out.println(usim.getUserId() + "\t" + usim.getUserRefId() + "\t" + usim.getSimilarity());
            // 5.如果用户之间的相似度已经存在与数据库中就修改，不存在就添加
            if (userSimilarityService.isExistsUserSimilarity(usim)) { // 修改
            	boolean flag = userSimilarityService.updateUserSimilarity(usim);
            	if (flag) {
                	System.out.println("修改数据成功");
                }
            } else { // 新增
            	boolean flag = userSimilarityService.saveUserSimilarity(usim);
                if (flag) {
                	System.out.println("插入数据成功");
                }
            }
        }
        
    }
    
    /**
     * 测试查询用户相似度集合列表
     */
    @Test
    public void testListUserSimilarity() {
    	UserSimilarityServiceImpl userSimilarityService = (UserSimilarityServiceImpl) application.getBean("userSimilarityService");
        // 1.查询出某个用户与其他用户的相似度列表
    	List<UserSimilarityDAO> userSimilarityList = userSimilarityService.listUserSimilarityByUId(2L);
    	
    	// 2.打印输出
    	for (UserSimilarityDAO userSimilarityDAO : userSimilarityList) {
    		System.out.println(userSimilarityDAO.getUserId() + "\t" + userSimilarityDAO.getUserRefId() + "\t" + userSimilarityDAO.getSimilarity());
    	}
    	
    }
 
    /**
     * 测试取出与指定用户相似度最高的前N个用户
     */
    @Test
    public void testGetTopNUser() {
    	
    	UserSimilarityServiceImpl userSimilarityService = (UserSimilarityServiceImpl) application.getBean("userSimilarityService");
    	// 1.查询出某个用户与其他用户的相似度列表
    	List<UserSimilarityDAO> userSimilarityList = userSimilarityService.listUserSimilarityByUId(2L);
    	
    	// 2.打印输出
    	for (UserSimilarityDAO userSimilarityDAO : userSimilarityList) {
    		System.out.println(userSimilarityDAO.getUserId() + "\t" + userSimilarityDAO.getUserRefId() + "\t" + userSimilarityDAO.getSimilarity());
    	}
    	
    	// 3.获取与id为2L的用户的浏览行为最相似的前2个用户
    	List<Long> userIds = RecommendUtils.getSimilarityBetweenUsers(2L, userSimilarityList, 3);
    	
    	// 4.打印输出
    	System.out.println("与" + 2 + "号用户最相似的前3个用户为：");
    	for (Long userRefId : userIds) {
    		System.out.println(userRefId);
    	}
    	
    }
    
    /**
     * 获取被推荐的类目id列表
     */
    @Test
    public void testGetRecommendateCategoy2() {
    	UserSimilarityServiceImpl userSimilarityService = (UserSimilarityServiceImpl) application.getBean("userSimilarityService");
    	UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
    	// 1.查询出某个用户与其他用户的相似度列表
    	List<UserSimilarityDAO> userSimilarityList = userSimilarityService.listUserSimilarityByUId(1L);
    	
    	// 2.获取所有的用户的浏览记录
    	List<UserActiveDAO> userActiveList = userActiveService.listAllUserActive();
    	for (UserSimilarityDAO userSimilarityDAO : userSimilarityList) {
    		System.out.println(userSimilarityDAO.getUserId() + "\t" + userSimilarityDAO.getUserRefId() + "\t" + userSimilarityDAO.getSimilarity());
    	}
    	
    	// 3.找出与id为1L的用户浏览行为最相似的前3个用户
    	List<Long> userIds = RecommendUtils.getSimilarityBetweenUsers(1L, userSimilarityList, 3);
    	System.out.println("与" + 1 + "号用户最相似的前3个用户为：");
    	for (Long userRefId : userIds) {
    		System.out.println(userRefId);
    	}
    	
    	// 4.获取应该推荐给1L用户的二级类目
    	List<Long> recommendateCategory2 = RecommendUtils.getRecommendateCategory2(1L, userIds, userActiveList);
    	for (Long category2Id : recommendateCategory2) {
    		System.out.println("被推荐的二级类目：" + category2Id);
    	}
    	
    }
    
    /**
     * 测试获取被推荐的商品列表(从被推荐的二级类目找出点击量最大的商品作为推荐的商品)
     */
    @Test
    public void testGetRecommendateProduct() {
    	UserSimilarityServiceImpl userSimilarityService = (UserSimilarityServiceImpl) application.getBean("userSimilarityService");
    	UserActiveService userActiveService = (UserActiveService) application.getBean("userActiveService");
    	ProductService productService = (ProductService)application.getBean("productService");
    	
    	// 1.查询出某个用户与其他用户的相似度列表
    	List<UserSimilarityDAO> userSimilarityList = userSimilarityService.listUserSimilarityByUId(1L);
    	
    	// 2.获取所有的用户的浏览记录
    	List<UserActiveDAO> userActiveList = userActiveService.listAllUserActive();
    	for (UserSimilarityDAO userSimilarityDAO : userSimilarityList) {
    		System.out.println(userSimilarityDAO.getUserId() + "\t" + userSimilarityDAO.getUserRefId() + "\t" + userSimilarityDAO.getSimilarity());
    	}
    	
    	// 3.找出与id为1L的用户浏览行为最相似的前2个用户
    	List<Long> userIds = RecommendUtils.getSimilarityBetweenUsers(1L, userSimilarityList, 3);
    	System.out.println("与" + 1 + "号用户最相似的前3个用户为：");
    	for (Long userRefId : userIds) {
    		System.out.println(userRefId);
    	}
    	
    	// 4.获取应该推荐给1L用户的二级类目
    	List<Long> recommendateCategory2 = RecommendUtils.getRecommendateCategory2(1L, userIds, userActiveList);
    	for (Long category2Id : recommendateCategory2) {
    		System.out.println("被推荐的二级类目：" + category2Id);
    	}
    	
    	// 5.找出二级类目中的所有商品
    	List<Product> recommendateProducts = new ArrayList<Product>();
    	for (Long category2Id : recommendateCategory2) {
    		List<ProductDAO> productList = productService.listProductByCategory2Id(category2Id);
    		// 找出当前二级类目中点击量最大的商品
    		Product maxHitsProduct = RecommendUtils.findMaxHitsProduct(productList);
    		recommendateProducts.add(maxHitsProduct);
    	}
    	
    	// 6.打印输出
    	for (Product product : recommendateProducts) {
    		System.out.println("被推荐的商品：" + product.getProductName());
    	}
    }
}
