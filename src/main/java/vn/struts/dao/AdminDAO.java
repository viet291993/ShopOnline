package vn.struts.dao;

import java.util.List;

import vn.struts.entity.Admin;

public interface AdminDAO {
	List<Admin> getAll();

	Admin findByUsername(String Username);
	
	Admin checkLogin(String Username, String password);

	boolean create(Admin admin);

	boolean update(Admin admin);

	boolean delete(String Username);
}
