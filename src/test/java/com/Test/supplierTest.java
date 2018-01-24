package com.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Dao.SupplierDAO;
import com.model.Supplier;

public class supplierTest {
	public static void main(String[] args) {
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.*");
	context.refresh();
	SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");
	Supplier supplier = (Supplier) context.getBean("supplier");
	supplier.setSupplierName("hddsjk");
	supplier.setContactNumber(87968764);
	supplierDAO.saveOrUpdate(supplier);
	}
}
