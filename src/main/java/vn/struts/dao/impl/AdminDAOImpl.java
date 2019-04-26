package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;

@Transactional(rollbackFor = Exception.class)
public class AdminDAOImpl implements AdminDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "from Admin";
		List<Admin> list = session.createQuery(sql).list();
		return list;
	}

	@Override
	public Admin findByUsername(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Admin admin = (Admin) session.get(Admin.class, username);
		return admin;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Admin checkLogin(String Username,String Password) {
		Session session = this.sessionFactory.getCurrentSession();
		String query = "FROM Admin a where a.username like :username and a.password like :password";
		List<Admin> results = session.createQuery(query).setParameter("username", Username).setParameter("password", Password).list();
		return results.isEmpty() ? null : results.get(0);
	}

	@Override
	public boolean create(Admin admin) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(admin);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Admin admin) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(admin);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delete(String username) {
		Admin admin = findByUsername(username);
		if (admin == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(admin);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	
}
