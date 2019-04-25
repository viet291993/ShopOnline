package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.CatalogDAO;
import vn.struts.entity.Catalog;
import vn.struts.service.CatalogService;

public class CatalogServiceImpl implements CatalogService {

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	@Override
	public List<Catalog> getAllCatalog() {
		return catalogDAO.getAll();
	}

	@Override
	public Catalog findCatalogById(int id) {
		return catalogDAO.findById(id);
	}

	@Override
	public boolean createCatalog(Catalog catalog) {
		return catalogDAO.create(catalog);
	}

	@Override
	public boolean updateCatalog(Catalog catalog) {
		return catalogDAO.update(catalog);
	}

	@Override
	public boolean deleteCatalog(int id) {
		return catalogDAO.delete(id);
	}

}
