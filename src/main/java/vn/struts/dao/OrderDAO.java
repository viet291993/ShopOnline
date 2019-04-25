package vn.struts.dao;

import java.util.List;

import vn.struts.entity.Order;

public interface OrderDAO {
	List<Order> getAll();
	
	List<Order> getByProductId(int id);
	
	List<Order> getByTransactionId(Long id);

	Order findById(int id);

	boolean create(Order order);

	boolean update(Order order);

	boolean delete(int id);
}
