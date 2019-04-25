package vn.struts.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import vn.struts.dao.CatalogDAO;
import vn.struts.entity.Catalog;

@Transactional(rollbackFor = Exception.class)
public class CatalogDAOImpl implements CatalogDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Catalog> getAll() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "from Catalog";
		List<Catalog> list = session.createQuery(sql).list();
		return list;
	}

	@Override
	public Catalog findById(int id) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Catalog catalog = (Catalog) session.get(Catalog.class, id);
			return catalog;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public boolean create(Catalog catalog) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(catalog);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(Catalog catalog) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(catalog);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(int id) {
		Catalog catalog = findById(id);
		if (catalog == null) {
			return false;
		}
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(catalog);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
