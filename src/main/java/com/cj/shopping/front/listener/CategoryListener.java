package com.cj.shopping.front.listener;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import com.cj.shopping.sysmanage.dao.Category1DAO;
import com.cj.shopping.sysmanage.entity.Category1;
import com.cj.shopping.sysmanage.service.Category1Service;

/**
 * 类描述：监听ServletContext上下文创建与销毁的监听器
 * 类名称：com.cj.shopping.front.listener.Category1Listener
 */
@Component
@WebListener
public class CategoryListener implements ServletContextListener, ApplicationContextAware {

	private static ApplicationContext applicationContext;

	/**
     * 上下文被销毁的时候做的事
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * 上下文初始化时加载一二级类目列表
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	// 1.从IOC容器中获取一级类目服务类
    	Category1Service category1Service = (Category1Service) CategoryListener.applicationContext.getBean("category1Service");
    	
    	// 2.设置一些查询条件
    	Category1 category1 = new Category1();
		category1.setShowFlag(1);
		
		// 3.获取满足条件的一二级类目列表
		List<Category1DAO> category1DAOList = category1Service.listCategory1DAO(category1);
		
		// 4.把满足条件的一二级类目列表放入application中
		ServletContext context = sce.getServletContext();
		context.setAttribute("category1List", category1DAOList);
    }

    @Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
    	CategoryListener.applicationContext = applicationContext;
	}
	
}
