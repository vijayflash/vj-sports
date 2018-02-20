package com.niit.Daoimpl;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.RoleDao;
import com.niit.model.Role;

@Repository("RoleDao")
@Transactional
public class RoleDaoImpl implements RoleDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public RoleDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public List<Role> list() {
		@SuppressWarnings({ "unchecked" })
		List<Role> listRole = (List<Role>) sessionFactory.getCurrentSession().createCriteria(Role.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listRole;
	}

	public Role getByUName(String uname) {
		String hql = "from Role where uname ='" + uname + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) (query).list();

		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}

	public Role getByEmail(String email) {
		String hql = "from Role where email ='" + email + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) (query).list();

		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}

	public Role getByMNum(int mnum) {
		String hql = "from Role where mnum ='" + mnum + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Role> listRole = (List<Role>) (query).list();

		if (listRole != null && !listRole.isEmpty()) {
			return listRole.get(0);
		}
		return null;
	}

	public void saveOrUpdate(Role role) {
		sessionFactory.getCurrentSession().saveOrUpdate(role);
		
	}

	public void delete(String uname) {
		Role roleToDelete = new Role();
		roleToDelete.setUname(uname);
		sessionFactory.getCurrentSession().delete(roleToDelete);
		
	}

}