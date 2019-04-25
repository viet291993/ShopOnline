package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.ProductDAO;
import vn.struts.entity.Product;
import vn.struts.service.ProductService;

public class ProductServiceImpl implements ProductService {

	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;
	
	@Override
	public List<Product> getAllProduct() {
		return productDAO.getAll();
	}

	@Override
	public Product findProductById(int id) {
		return productDAO.findById(id);
	}

	@Override
	public boolean createProduct(Product product) {
		return productDAO.create(product);
	}

	@Override
	public boolean updateProduct(Product product) {
		return productDAO.update(product);
	}

	@Override
	public boolean deleteProduct(int id) {
		return productDAO.delete(id);
	}

}
