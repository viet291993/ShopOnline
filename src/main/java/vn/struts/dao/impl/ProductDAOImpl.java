package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import vn.struts.dao.ProductDAO;
import vn.struts.entity.Product;

@Transactional(rollbackFor = Exception.class)
public class ProductDAOImpl implements ProductDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAll() {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			String sql = "from Product";
			List<Product> list = session.createQuery(sql).list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getByCatalogId(int id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			String sql = "from Product p where p.catalog.id = "+id;
			List<Product> list = session.createQuery(sql).list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Product findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);
		return product;
	}

	@Override
	public boolean create(Product product) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Product product) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(product);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delete(int id) {
		Product product = findById(id);
		if (product == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(product);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
