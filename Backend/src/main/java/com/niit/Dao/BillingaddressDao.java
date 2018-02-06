package com.niit.Dao;

import java.util.List;

import com.niit.model.Billingaddress;

public interface BillingaddressDao {

	public List<Billingaddress> list();
	
	public Billingaddress getByBillId(int billid);		
	
	public Billingaddress getByBillingAddress(String billingaddress);	
	
    public Billingaddress getByContactNumber(int contactnumber);
    
	public void saveOrUpdate(Billingaddress billingaddress);
		
	public void delete(String BillingAddress);
	
	public void editBillingAddress(Billingaddress billingaddress);
}