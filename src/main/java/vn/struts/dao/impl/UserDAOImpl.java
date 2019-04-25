package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import vn.struts.dao.UserDAO;
import vn.struts.entity.User;

@Transactional(rollbackFor = Exception.class)
public class UserDAOImpl implements UserDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "from User";
		List<User> list = session.createQuery(sql).list();
		return list;
	}

	@Override
	public User findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		return user;
	}

	@Override
	public boolean create(User user) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(User user) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delete(int id) {
		User user = findById(id);
		if (user == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(user);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
