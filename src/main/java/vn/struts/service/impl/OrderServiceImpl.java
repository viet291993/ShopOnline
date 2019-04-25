package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.OrderDAO;
import vn.struts.entity.Order;
import vn.struts.service.OrderService;

public class OrderServiceImpl implements OrderService {

	@Autowired
	@Qualifier("OrderDAO")
	private OrderDAO orderDAO;
	
	
	@Override
	public List<Order> getAllOrder() {
		return orderDAO.getAll();
	}

	@Override
	public Order findOrderById(int id) {
		return orderDAO.findById(id);
	}

	@Override
	public boolean createOrder(Order order) {
		return orderDAO.create(order);
	}

	@Override
	public boolean updateOrder(Order order) {
		return orderDAO.update(order);
	}

	@Override
	public boolean deleteOrder(int id) {
		return orderDAO.delete(id);
	}

}
