package vn.struts.service;

import java.util.List;

import vn.struts.entity.Product;

public interface ProductService {
	List<Product> getAllProduct();

	Product findProductById(int id);

	boolean createProduct(Product product);

	boolean updateProduct(Product product);

	boolean deleteProduct(int id);
}
