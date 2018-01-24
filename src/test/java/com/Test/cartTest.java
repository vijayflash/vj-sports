package com.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.CartDAO;
import com.model.Cart;

public class cartTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
		CartDAO cartDAO = (CartDAO) context.getBean("CartDAO");
		Cart cart = (Cart) context.getBean("cart");
		cart.setProductName("dfhjj");
		cartDAO.saveOrUpdate(cart);
	}

}
