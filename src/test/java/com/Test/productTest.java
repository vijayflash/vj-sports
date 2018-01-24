package com.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;



import com.Dao.ProductDAO;

import com.model.Product;

public class productTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
		
		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		Product product = (Product) context.getBean("product");

		product.setProductName("fdknmfg");
		productDAO.saveOrUpdate(product);
		
		
	}

}
