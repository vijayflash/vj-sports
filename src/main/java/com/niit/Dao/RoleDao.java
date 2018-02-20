package com.niit.Dao;

import java.util.List;

import com.niit.model.Role;

public interface RoleDao {

	public List<Role> list();	
	
	public Role getByUName(String uname);
	
	public Role getByEmail(String email);
	
	public Role getByMNum(int mnum);
	
	public void saveOrUpdate(Role role);
		
    public void delete(String uname);
}