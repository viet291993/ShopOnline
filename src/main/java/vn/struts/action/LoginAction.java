package vn.struts.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;

@Action(value = "login", results = { @Result(name = "input", location = "/WEB-INF/pages/login.jsp"),
		@Result(name = "error", location = "/WEB-INF/pages/login.jsp"),
		@Result(name = "success", type = "redirect", location = "/userInfo") })
public class LoginAction extends ActionSupport implements ServletRequestAware, SessionAware {

	private static final long serialVersionUID = 5042799499847313350L;
	private String username;
	private String password;

	private HttpServletRequest request;
	private Map<String, Object> session;

	@Autowired
	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	public LoginAction() {

	}

	@Override
	public String execute() throws Exception {
		if (request.getMethod().equals("GET")) {
			return INPUT;
		}
		Admin admin = adminDAO.checkLogin(username, password);
		if (admin != null) {
				session.put("name", this.username);
				return SUCCESS;
		} else {
			addActionError("Tài khoản hoặc mật khẩu không đúng");
			return ERROR;
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
}
