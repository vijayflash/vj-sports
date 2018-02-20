package com.niit.Dao;


import java.util.List;

import com.niit.model.Cart;

public interface CartDao {


	public Cart getByItemId(int itemId);
	
	public void saveOrUpdate(Cart cartitem);
	
	public void save(Cart cartitem);
	
	public List<Cart> list();
	
	public List<Cart> getCartItems(String uname);
	
	public void deleteCartItem(Cart cart);
	
	public Cart getByUserandProduct(String uname, int productId);
	
	public boolean itemAlreadyExist(String uname, int productId);
	
	public boolean getByUserName(String uname);
	
	public List<Cart> getDispatchItems(String uname);
	
	public List<Cart> getAllItems();
	
	public  List<Cart> getByEmailId(String email);
}
