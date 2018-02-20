package com.niit.config;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.Dao.BillingaddressDao;
import com.niit.Dao.CartDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.ProductDao;
import com.niit.Dao.RoleDao;
import com.niit.Dao.ShipmentDao;
import com.niit.Dao.SupplierDao;
import com.niit.Dao.UserDao;
import com.niit.Daoimpl.BillingaddressDaoImpl;
import com.niit.Daoimpl.CartDaoImpl;
import com.niit.Daoimpl.CategoryDaoImpl;
import com.niit.Daoimpl.ProductDaoImpl;
import com.niit.Daoimpl.RoleDaoImpl;
import com.niit.Daoimpl.ShipmentDaoImpl;
import com.niit.Daoimpl.SupplierDaoImpl;
import com.niit.Daoimpl.UserDaoImpl;
import com.niit.model.Billingaddress;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Shipment;
import com.niit.model.Supplier;
import com.niit.model.User;


	@Configuration
	@ComponentScan("com.niit.*")
	@EnableTransactionManagement
	public class HiberConfig {

		@Bean(name = "dataSource")
		public DataSource getH2DataSource() {

			DriverManagerDataSource dataSource = new DriverManagerDataSource();
				
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/vjfrontend");

			dataSource.setDriverClassName("org.h2.Driver");

			dataSource.setUsername("sm");
			dataSource.setPassword("vjsports");
			
			
			return dataSource;
		}
		
		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.hbm2ddl.auto", "update");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			properties.put("hibernate.format_sql", "true");
			return properties;
		}
		@Autowired
		@Bean(name = "sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {

			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClass(User.class);
			sessionBuilder.addAnnotatedClass(Role.class);
			sessionBuilder.addAnnotatedClass(Category.class);
			sessionBuilder.addAnnotatedClass(Product.class);
			sessionBuilder.addAnnotatedClass(Supplier.class);
			sessionBuilder.addAnnotatedClass(Billingaddress.class);
		    sessionBuilder.addAnnotatedClass(Shipment.class);
			sessionBuilder.addAnnotatedClass(Cart.class);
			
			return sessionBuilder.buildSessionFactory();
		}
		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

			return transactionManager;
		}
		
		@Autowired(required = true)
		@Bean(name = "UserDao")
		public UserDao getUserDao(SessionFactory sessionFactory) {
			return new UserDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "RoleDao")
		public RoleDao getRoleDao(SessionFactory sessionFactory) {
			return new RoleDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "BillingaddressDao")
		public BillingaddressDao getBillingaddressDao(SessionFactory sessionFactory) {
			return new BillingaddressDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "CartDao")
		public CartDao getCartDao(SessionFactory sessionFactory) {
			return new CartDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "CategoryDao")
		public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
			return new CategoryDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "ProductDao")
		public ProductDao getProductDao(SessionFactory sessionFactory) {
			return new ProductDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "ShippingaddressDao")
		public ShipmentDao getShippingaddressDao(SessionFactory sessionFactory) {
			return new ShipmentDaoImpl(sessionFactory);
		}
		
		@Autowired(required = true)
		@Bean(name = "SupplierDao")
		public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
			return new SupplierDaoImpl(sessionFactory);
		}
		
}
