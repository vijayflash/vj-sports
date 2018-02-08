package com.niit.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartDao;
import com.niit.model.Cart;

@Transactional
@Repository("CartDao")
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Cart getByItemId(int itemId) {
		Cart cart = (Cart) sessionFactory.getCurrentSession().get(Cart.class, itemId);
		return cart;
	}

	public void saveOrUpdate(Cart cartitem) {

		sessionFactory.getCurrentSession().saveOrUpdate(cartitem);

	}

	public void save(Cart cartitem) {

		sessionFactory.getCurrentSession().save(cartitem);

	}

	@SuppressWarnings("unchecked")
	public List<Cart> list() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public List<Cart> getCartItems(String username) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where username=:username and status='New'");
		query.setParameter("username", username);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		return list;
	}

	public void deleteCartItem(Cart cart) {
		sessionFactory.getCurrentSession().delete(cart);
	}

	public Cart getByUserandProduct(String username, int productId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where username=:username and productid=:productId");
		query.setParameter("username", username);
		query.setParameter("productId", productId);

		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	public boolean itemAlreadyExist(String username, int productId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where username=:username and productid=:productId and status='New'");
		query.setParameter("username", username);
		query.setParameter("productId", productId);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}
	public boolean getByUserName(String username) {
		String hql = "from Cart where username ='" + username +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}
	
	public List<Cart> getDispatchItems(String username) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where username=:username and status='Dispatched'");
		query.setParameter("username", username);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		return list;
	}
	
	public List<Cart> getAllItems() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where status='Dispatched'and days > -2 order by itemId");
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		return list;
	}
	
	@Transactional
	public  List<Cart> getByEmailId(String email) {
		String hql = "from Cart where EmailId ='" + email +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		
		return list;
	}
	

}