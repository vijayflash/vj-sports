package com.Dao;

import com.model.User;
import java.util.List;

public interface UserDAO {
	public List<User> list();

	public User getByUserId(int userid);

	public User getByUserName(String userame);

	public User getByEmailId(String emailid);
	
	public User getByPassword(String password);
    
    public User getByContactNumber(String contactnumber);
    
    public User getByAddress(String address);
    
    public User getByZipcode(int zipcode);
    
    public User getByRole(String role);
	

	public boolean isAllReadyRegister(String email, boolean b);

	public void saveOrUpdate(User user);

	public void delete(int UserId);

}
