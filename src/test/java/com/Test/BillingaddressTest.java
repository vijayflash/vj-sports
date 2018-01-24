package com.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.BillingaddressDAO;
import com.model.Billingaddress;
public class BillingaddressTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.*");
		context.refresh();
		BillingaddressDAO billingaddressDAO = (BillingaddressDAO) context.getBean("BillingaddressDAO");
		Billingaddress billingaddress = (Billingaddress) context.getBean("billingaddress");
		billingaddress.setAddress("hfdjdufuinv");
		billingaddress.setContactNumber(897465);
		billingaddressDAO.saveOrUpdate(billingaddress);
}
}