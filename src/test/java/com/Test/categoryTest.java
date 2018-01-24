package com.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.CategoryDAO;
import com.model.Category;
public class categoryTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		Category category = (Category) context.getBean("category");
category.setCategoryName("bats");
		
		categoryDAO.saveOrUpdate(category);
		
		

	}

}
