package vn.struts.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;

import vn.struts.dao.AdminDAO;

@Action(value = "delete", results = { @Result(name = "error",type = "redirect", location = "/userInfo"),
		@Result(name = "success", type = "redirect", location = "/userInfo") })
public class UserDeleteAction extends ActionSupport implements ServletRequestAware {

	static final long serialVersionUID = -7645625953712565391L;

	private HttpServletRequest request;

	@Autowired
	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	@Override
	public String execute() throws Exception {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			boolean kq = adminDAO.delete(id);
			if (kq) {
				addActionError("Xóa tài khoản thành công");
				return SUCCESS;
			}
			addActionError("Lỗi xóa");
			return ERROR;
		} catch (Exception e) {
			addActionError("Lỗi xóa");
			return ERROR;
		}
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

}
