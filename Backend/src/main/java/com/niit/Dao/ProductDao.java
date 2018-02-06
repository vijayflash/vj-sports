package com.niit.Dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {

public List<Product> list();
	
	public Product getByProductId(int productid);
	
	public Product getByProductName(String productname);
	
	public List<Product> getBySupplierName(String suppliername);
	
	public void saveOrUpdate(Product product);
	public List<Product> getByFeatured();
	
	public void delete(int product_id);
}