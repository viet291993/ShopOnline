package vn.struts.dao;

import java.util.List;

import vn.struts.entity.Order;
import vn.struts.entity.Transaction;

public interface TransactionDAO {
	List<Transaction> getAll();

	Transaction findById(Long id);

	boolean create(Transaction Transaction,List<Order> list);

	boolean update(Transaction Transaction);

	boolean delete(Long id);
}
