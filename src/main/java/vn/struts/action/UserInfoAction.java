
package vn.struts.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;

@Action(value = "userInfo", results = { @Result(name = "userInfoPage", location = "/WEB-INF/pages/userInfo.jsp") })
public class UserInfoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Autowired

	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	@Override
	public String execute() throws Exception {
		list = adminDAO.getAll();
		return "userInfoPage";
	}

	private List<Admin> list;

	public List<Admin> getList() {
		return list;
	}

	public void setList(List<Admin> list) {
		this.list = list;
	}

}
