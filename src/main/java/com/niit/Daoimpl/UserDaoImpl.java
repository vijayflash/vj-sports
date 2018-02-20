package com.niit.Daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.User;

@Repository("UserDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public List<User> list() {
		@SuppressWarnings({ "unchecked" })
		List<User> listUser = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listUser;
	}

	public User getByUserId(int userid) {
		String hql = "from User where userId ='" + userid + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}

	public User getByUName(String uname) {
		String hql = "from User where uname ='" + uname + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		
	}
		return null;
	}

	public User getByEmail(String email) {
		String hql = "from User where email ='" + email + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) (query).list();

		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		
	}
		return null;
	}

	public boolean isAllReadyRegister(String email, boolean b) {
		String hql = "from User where email ='"+ email +"'";
		
		
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().save(user);
		
	}

	public void delete(int UserId) {
		User userToDelete = new User();
		userToDelete.setUserId(UserId);
		sessionFactory.getCurrentSession().delete(userToDelete);
		
	}

	
}
