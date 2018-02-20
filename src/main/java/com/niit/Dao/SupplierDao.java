package com.niit.Dao;

import java.util.List;
import com.niit.model.Supplier;

public interface SupplierDao {

	public List<Supplier> list();
	
	public Supplier getBySupplierName(String suppliername);		
	
	public Supplier getBySupplierId(int supplierid);	
	
    public Supplier getByContactNumber(int contactnumber);
    
	public void saveOrUpdate(Supplier supplier);
		
	public void delete(int supplierid);
}
