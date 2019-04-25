package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import vn.struts.dao.OrderDAO;
import vn.struts.dao.TransactionDAO;
import vn.struts.entity.Order;
import vn.struts.entity.Transaction;

@Transactional(rollbackFor = Exception.class)
public class TransactionDAOImpl implements TransactionDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Autowired
	@Qualifier("OrderDAO")
	private OrderDAO orderDAO;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Transaction> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "from Transaction";
		List<Transaction> list = session.createQuery(sql).list();
		return list;
	}

	@Override
	public Transaction findById(Long id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Transaction transaction = (Transaction) session.get(Transaction.class, id);
			return transaction;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public boolean create(Transaction transaction,List<Order> list) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(transaction);
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setTransaction(transaction);
				session.save(list.get(i));
			};
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Transaction transaction) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(transaction);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delete(Long id) {
		Transaction transaction = findById(id);
		if (transaction == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(transaction);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
