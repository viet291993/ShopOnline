
package vn.struts.rest.admin;

import java.util.Collection;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;
import vn.struts.entity.User;


@Action(value = "user")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "user" }),
	@Result(name = "index", location = "/WEB-INF/content/admin-index.jsp") })
public class userController implements ModelDriven<Object> {
	private User model = new User();
	private int id;
	private Collection<Admin> list;

	@Autowired

	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	// GET /admin/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("show");
	}

	// GET /admin
	public HttpHeaders index() {
		list = adminDAO.getAll();
		return new DefaultHttpHeaders("index").disableCaching();

	}

	// GET /admin/1/edit
	public String edit() {
		return "edit";
	}

	// GET /admin/new
	public String editNew() {
		return "editNew";
	}

	// GET /admin/1/deleteConfirm
	public String deleteConfirm() {
		return "deleteConfirm";
	}

	// DELETE /admin/1
	public String destroy() {
		return "success";
	}

	// POST /admin
	public HttpHeaders create() {
		return new DefaultHttpHeaders("success").setLocationId(model.getId());
	}

	// PUT /admin/1
	public String update() {
		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public Object getModel() {
		return list != null ? list : model;
	}

}
