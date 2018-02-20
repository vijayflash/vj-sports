package com.niit.Dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDao {

    public List<Category> list();
	
	public Category getByCategoryId(int categoryid);
	
	public Category getByCategoryName(String categoryname);
	
	public void saveOrUpdate(Category category);
	
	public void delete(int category_id);
}