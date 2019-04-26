package vn.struts.rest.admin;

import java.util.Collection;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;

import vn.struts.dao.CatalogDAO;
import vn.struts.dao.ProductDAO;
import vn.struts.entity.Catalog;


@InterceptorRef("loginStack")
@ParentPackage(value ="admin")
@Namespace("/admin")
@Action(value = "catalog")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "catalog" }),
		@Result(name = "index", location = "/WEB-INF/admin/catalog/catalog-index.jsp"),
		@Result(name = "editNew", location = "/WEB-INF/admin/catalog/catalog-editNew.jsp"),
		@Result(name = "edit", location = "/WEB-INF/admin/catalog/catalog-edit.jsp"),
		@Result(name = "show", location = "/WEB-INF/admin/catalog/catalog-show.jsp") })
public class CatalogController extends ActionSupport implements ModelDriven<Object>, Validateable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646780589712360071L;
	private Catalog model = new Catalog();
	private int id;
	private Collection<Catalog> listCatalog;

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	// GET /admin/catalog/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("show");
	}

	// GET /admin/catalog
	public HttpHeaders index() {
		listCatalog = catalogDAO.getAll();
		return new DefaultHttpHeaders("index").disableCaching();

	}

	// GET /admin/catalog/1/edit
	public String edit() {
		return "edit";
	}

	// GET /admin/catalog/new
	public String editNew() {
		model = new Catalog();
		return "editNew";
	}

	// GET /admin/catalog/1/deleteConfirm
	public String deleteConfirm() {
		return "deleteConfirm";
	}

	// DELETE /admin/catalog/1
	public HttpHeaders destroy() {
		if (!productDAO.getByCatalogId(id).isEmpty()) {
			addActionError(getText("msg.catalogDelete.error-relationship"));
			return index();
		}
		if (catalogDAO.delete(id)) {
			addActionMessage(getText("msg.catalogDelete.success"));
		} else {
			addActionError(getText("msg.catalogDelete.error"));
		}
		return index();
	}

	// POST /admin/catalog
	public HttpHeaders create() {
		if (catalogDAO.create(model)) {
			addActionMessage(getText("msg.catalogNew.success"));
		} else {
			addActionError(getText("msg.catalogNew.error"));
		}
		return new DefaultHttpHeaders("editNew").setLocationId(model.getId());
	}

	// PUT /admin/catalog/1
	public String update() {
		if (catalogDAO.update(model)) {
			addActionMessage(getText("msg.catalogEdit.success"));
		} else {
			addActionError(getText("msg.catalogEdit.error"));
		}
		return "edit";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		model = catalogDAO.findById(id);
		this.id = id;
	}

	@Override
	public Object getModel() {
		return listCatalog != null ? listCatalog : model;
	}

	@Override
	public void validate() {
		if (model.getName() == null || model.getName().length() == 0) {
			addFieldError("name",getText("msg.catalogName.required"));
		}
	}

}
