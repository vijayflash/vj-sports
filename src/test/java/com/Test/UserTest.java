package com.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.RoleDAO;
import com.Dao.UserDAO;
import com.model.Role;
import com.model.User;

public class UserTest {
	
	public static void main (String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
	
	UserDAO userdao = (UserDAO) context.getBean("UserDAO");
	
	
	User user = (User) context.getBean("user");
	RoleDAO roleDAO = (RoleDAO) context.getBean("RoleDAO");
	Role role = (Role) context.getBean("role");
	
	
	user.setUserId(90);
	
	
	user.setEmailId("vinothraja110496@gmail.com");
	user.setEnabled(true);
	user.setUserName("vijay");
	user.setPassword("murugan");
	user.setAddress("mayilauthurai");
	user.setContactNumber("9585023496");

	user.setRole(role);
	role.setUser(user);
	
	
	
	
	userdao.saveOrUpdate(user);
	roleDAO.saveOrUpdate(role);
		
	}

}
