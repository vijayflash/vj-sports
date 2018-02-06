package com.niit.Dao;


import java.util.List;

import com.niit.model.User;

public interface UserDao {

	public List<User> list();
	
	public User getByUserId(int userid);
	
	public User getByUName(String uname);		
	
	public User getByEmail(String email);
	
	public boolean isAllReadyRegister(String email, boolean b);
	
	public void saveOrUpdate(User user);
		
	public void delete(int UserId);

}