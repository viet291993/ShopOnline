package vn.struts.dao;

import java.util.List;

import vn.struts.entity.User;

public interface UserDAO {
	List<User> getAll();
	
	User findById(int id);
	
	boolean create(User user);
	
	boolean update(User user);
	
	boolean delete(int id);
}
