package com.niit.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.BillingaddressDao;
import com.niit.Dao.CartDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.ProductDao;
import com.niit.Dao.RoleDao;
import com.niit.Dao.ShippingaddressDao;
import com.niit.Dao.SupplierDao;
import com.niit.Dao.UserDao;
import com.niit.model.Billingaddress;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Shippingaddress;
import com.niit.model.Supplier;
import com.niit.model.User;

public class Test {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CategoryDao categoryDao = (CategoryDao) context.getBean("CategoryDao");
		UserDao userDao = (UserDao) context.getBean("UserDao");
		ProductDao productDao = (ProductDao) context.getBean("ProductDao");
		BillingaddressDao billingaddressDao = (BillingaddressDao) context.getBean("BillingaddressDao");
		CartDao cartDao = (CartDao) context.getBean("CartDao");
		SupplierDao supplierDao = (SupplierDao) context.getBean("SupplierDao");
		ShippingaddressDao shippingaddressDao = (ShippingaddressDao) context.getBean("ShippingaddressDao");
		RoleDao roleDao = (RoleDao) context.getBean("RoleDao");

		Category category = (Category) context.getBean("category");
		User user = (User) context.getBean("user");
		Product product = (Product) context.getBean("product");
		Billingaddress billingaddress = (Billingaddress) context.getBean("billingaddress");
		Cart cart = (Cart) context.getBean("cart");
		Supplier supplier = (Supplier) context.getBean("supplier");

		Shippingaddress shippingaddress = (Shippingaddress) context.getBean("shippingaddress");
		Role role = (Role) context.getBean("role");

		category.setCategoryName("Watches");

		categoryDao.saveOrUpdate(category);

		user.setUname("skfr");
		user.setEmail("jhvd@gmail.com");
		user.setPwd("jfkd");

		user.setMnum("98765");
		user.setAddress("s12,sejkajdh");

		role.setUname("kjgdffd");
		role.setEmail("hgfshdghj");
		role.setMnum("6567");

		user.setRole(role);
		role.setUser(user);

		userDao.saveOrUpdate(user);
		roleDao.saveOrUpdate(role);

		product.setProductName("fdknmfg");
		productDao.saveOrUpdate(product);

		billingaddress.setAddress("hfdjdufuinv");
		billingaddress.setContactNumber(897465);
		billingaddressDao.saveOrUpdate(billingaddress);

		cart.setProductName("dfhjj");
		cartDao.saveOrUpdate(cart);
		
		supplier.setSupplierName("hddsjk");
		supplier.setContactNumber(87968764);
		supplierDao.saveOrUpdate(supplier);
		
		shippingaddress.setAddress("fdgfs");
		shippingaddress.setUserName("jkfgjd");
		shippingaddressDao.saveOrUpdate(shippingaddress);

	}
}