package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/*import com.niit.Dao.BillingaddressDao;*/
import com.niit.Dao.ProductDao;
/*import com.niit.Dao.ProductDao;*/
import com.niit.Dao.RoleDao;
import com.niit.Dao.ShipmentDao;
/*import com.niit.Dao.ShippingaddressDao;*/
import com.niit.Dao.UserDao;
/*import com.niit.model.Billingaddress;*/
import com.niit.model.Product;
import com.niit.model.Role;
import com.niit.model.Shipment;
/*import com.niit.model.Shippingaddress;
import com.niit.model.Supplier;*/
import com.niit.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;


	/*
	 * private ShippingaddressDao shippingaddressDao;
	 * 
	 * @Autowired private BillingaddressDao billingaddressDao;
	 * 
	 */
	@Autowired
	private ShipmentDao ShipmentDao;

	@Autowired
	 private ProductDao productDao; 

	private RoleDao roleDao;

	@Autowired
	private Role role;

	@RequestMapping("addNewUser")
	public String addUser(@ModelAttribute User user, @ModelAttribute Shipment ship, Model model) {

		String message;

		if (userDao.isAllReadyRegister(user.getEmail(), true)) {
			message = "Your emailId is Alread registered you have to login";

		} else {

			user.setEnabled(true);
			role.setEmail(user.getEmail());
			role.setRole("ROLE_USER");
			role.setUname(user.getUname());
			role.setMnum(user.getMnum());

			user.setRole(role);
			role.setUser(user);

			userDao.saveOrUpdate(user);
			roleDao.saveOrUpdate(role);

			ship.setUserId(user.getUserId());
			ShipmentDao.saveOrUpdate(ship);

			
		/*	  billingaddress.setUserId(user.getUserId());
			  billingaddressDao.saveOrUpdate(billingaddress);*/
			 
			message = "You have Successfully Registered";
		}
		model.addAttribute("message", message);
		model.addAttribute("loginButtonClicked", true);
		return "home";

	}

	@RequestMapping("/afterlogin")
	public String loginProcess(Principal p, Model model) {
/*
		String email = p.getName();
		System.out.println(email);

		User user = userDao.getByEmail(email);

		Role role = roleDao.getByEmail(email);

		String role1 = role.getRole();

		if (role1.equals("ROLE_ADMIN")) {*/

			return "home";
			
		/*	
		}
		else if(role1.equals("ROLE_USER")){
			List<Product> product = productDao.getByFeatured();
			model.addAttribute("product", product);
			model.addAttribute("userLoggedIn", "true");
			return "home";
			}
		*/
	/*else {

			return "home";
		}*/
	}

}