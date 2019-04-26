package vn.struts.service;

import java.util.List;

import vn.struts.entity.Admin;

public interface AdminService {
	List<Admin> getAllAdmin();

	Admin findAdminByUsername(String username);

	boolean createAdmin(Admin admin);

	boolean updateAdmin(Admin admin);

	boolean deleteAdmin(String username);
}
