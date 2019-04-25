package vn.struts.service;

import java.util.List;

import vn.struts.entity.Admin;

public interface AdminService {
	List<Admin> getAllAdmin();

	Admin findAdminById(int id);

	boolean createAdmin(Admin admin);

	boolean updateAdmin(Admin admin);

	boolean deleteAdmin(int id);
}
