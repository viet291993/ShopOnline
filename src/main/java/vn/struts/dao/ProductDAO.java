package vn.struts.dao;

import java.util.List;

import vn.struts.entity.Product;

public interface ProductDAO {
	List<Product> getAll();
	
	List<Product> getByCatalogId(int id);
	
	Product findById(int id);

	boolean create(Product product);

	boolean update(Product product);

	boolean delete(int id);
}
