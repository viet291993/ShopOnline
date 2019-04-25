package vn.struts.service;

import java.util.List;

import vn.struts.entity.Transaction;

public interface TransactionService {
	List<Transaction> getAllTransaction();

	Transaction findTransactionById(int id);

	boolean createTransaction(Transaction Transaction);

	boolean updateTransaction(Transaction Transaction);

	boolean deleteTransaction(int id);
}
