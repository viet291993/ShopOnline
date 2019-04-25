package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import vn.struts.dao.OrderDAO;
import vn.struts.entity.Order;

@Transactional(rollbackFor = Exception.class)
public class OrderDAOImpl implements OrderDAO {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "from Order";
		List<Order> list = session.createQuery(sql).list();
		return list;
	}

	@Override
	public Order findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Order order = (Order) session.get(Order.class, id);
		return order;
	}

	@Override
	public boolean create(Order order) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(order);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Order order) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(order);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delete(int id) {
		Order order = findById(id);
		if (order == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(order);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getByProductId(int id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			String sql = "from Order o where o.product.id = "+id;
			List<Order> list = session.createQuery(sql).list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getByTransactionId(Long id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			String sql = "from Order o where o.transaction.id = "+id;
			List<Order> list = session.createQuery(sql).list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
