package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.UserDAO;
import vn.struts.entity.User;
import vn.struts.service.UserService;

public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("UserDAO")
	private UserDAO userDAO;

	@Override
	public List<User> getAllUser() {
		return userDAO.getAll();
	}

	@Override
	public User findUserById(int id) {
		return userDAO.findById(id);
	}

	@Override
	public boolean createUser(User user) {
		return userDAO.create(user);
	}

	@Override
	public boolean updateUser(User user) {
		return userDAO.update(user);
	}

	@Override
	public boolean deleteUser(int id) {
		return userDAO.delete(id);
	}

}
