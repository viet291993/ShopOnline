package vn.struts.service;

import java.util.List;

import vn.struts.entity.Catalog;

public interface CatalogService {
	List<Catalog> getAllCatalog();

	Catalog findCatalogById(int id);

	boolean createCatalog(Catalog catalog);

	boolean updateCatalog(Catalog catalog);

	boolean deleteCatalog(int id);
}
