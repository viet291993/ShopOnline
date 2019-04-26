package vn.struts.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;
import vn.struts.service.AdminService;

public class AdminServiceImpl implements AdminService {
	
	@Autowired
	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	@Override
	public List<Admin> getAllAdmin() {		
		return adminDAO.getAll();
	}

	@Override
	public Admin findAdminByUsername(String username) {		
		return adminDAO.findByUsername(username);
	}

	@Override
	public boolean createAdmin(Admin admin) {
		return adminDAO.create(admin);
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		return adminDAO.update(admin);
	}

	@Override
	public boolean deleteAdmin(String username) {
		return adminDAO.delete(username);
	}

}
