package com.Test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.ShippingaddressDAO;
import com.model.Shippingaddress;

public class shippingaddress {
	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
		ShippingaddressDAO shippingaddressDAO = (ShippingaddressDAO) context.getBean("ShippingaddressDAO");
		Shippingaddress shippingaddress = (Shippingaddress) context.getBean("shippingaddress");
		shippingaddress.setAddress("fdgfs");
		shippingaddress.setUserName("jkfgjd");
		shippingaddressDAO.saveOrUpdate(shippingaddress);

}
}
