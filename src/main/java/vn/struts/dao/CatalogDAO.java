package vn.struts.dao;

import java.util.List;

import vn.struts.entity.Catalog;

public interface CatalogDAO {
	List<Catalog> getAll();

	Catalog findById(int id);

	boolean create(Catalog catalog);

	boolean update(Catalog catalog);

	boolean delete(int id);
}
