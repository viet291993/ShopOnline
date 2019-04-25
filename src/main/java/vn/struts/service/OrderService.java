package vn.struts.service;

import java.util.List;

import vn.struts.entity.Order;

public interface OrderService {
	List<Order> getAllOrder();

	Order findOrderById(int id);

	boolean createOrder(Order order);

	boolean updateOrder(Order order);

	boolean deleteOrder(int id);
}
