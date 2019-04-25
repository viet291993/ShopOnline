package vn.struts.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;

@Action(value = "update", results = { @Result(name = "input", location = "/WEB-INF/pages/updateUser.jsp"),
		@Result(name = "error", location = "/WEB-INF/pages/updateUser.jsp"),
		@Result(name = "success",location = "/WEB-INF/pages/updateUser.jsp") })
public class UserUpdateAction extends ActionSupport implements ServletRequestAware {

	static final long serialVersionUID = -7645625953712565391L;
	
	
	private Admin admin;

	private HttpServletRequest request;

	@Autowired
	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	@Override
	public String execute() throws Exception {
		if (request.getMethod().equals("GET")) {
			int id = Integer.parseInt(request.getParameter("id"));
			admin = adminDAO.findById(id);
			return INPUT;
		}
		try {
			boolean kq = adminDAO.update(admin);
			if (kq) {
				addActionError("Cập nhật thành công");
				return SUCCESS;
			}
			addActionError("Lỗi cập nhật");
			return ERROR;
		} catch (Exception e) {
			addActionError("Lỗi cập nhật");
			return ERROR;
		}
	}


	public Admin getAdmin() {
		return admin;
	}


	public void setAdmin(Admin admin) {
		this.admin = admin;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

}
