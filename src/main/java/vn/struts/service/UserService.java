package vn.struts.service;

import java.util.List;

import vn.struts.entity.User;

public interface UserService {
	List<User> getAllUser();

	User findUserById(int id);

	boolean createUser(User user);

	boolean updateUser(User user);

	boolean deleteUser(int id);
}
