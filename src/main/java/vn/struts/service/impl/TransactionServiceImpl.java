package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.TransactionDAO;
import vn.struts.entity.Transaction;
import vn.struts.service.TransactionService;

public class TransactionServiceImpl implements TransactionService {

	@Autowired
	@Qualifier("TransactionDAO")
	private TransactionDAO transactionDAO;
	
	@Override
	public List<Transaction> getAllTransaction() {
		return transactionDAO.getAll();
	}

	@Override
	public Transaction findTransactionById(int id) {
		return null;
	}

	@Override
	public boolean createTransaction(Transaction Transaction) {
		return true;
	}

	@Override
	public boolean updateTransaction(Transaction Transaction) {
		return transactionDAO.update(Transaction);
	}

	@Override
	public boolean deleteTransaction(int id) {
		return true;
	}

}
