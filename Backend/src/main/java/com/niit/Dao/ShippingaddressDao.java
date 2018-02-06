package com.niit.Dao;
import java.util.List;

import com.niit.model.Shippingaddress;

public interface ShippingaddressDao {

    public List<Shippingaddress> list();
    
    public List<Shippingaddress> list(String EmailId);
	
	public Shippingaddress getByShippingAddress(String shippingaddress);
	
	public Shippingaddress getByShippingId(int shippingid);
	
	public Shippingaddress getByUserName(String username);
	
	public Shippingaddress getByUserId(int userid);
	
	public void saveOrUpdate(Shippingaddress shippingaddress);
	
	public void delete(int shippingId);
	
	public void editShippingAddress(Shippingaddress shippingaddress);
}