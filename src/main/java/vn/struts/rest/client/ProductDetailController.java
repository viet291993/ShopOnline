package vn.struts.rest.client;

import java.util.Collection;
import java.util.Date;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.CatalogDAO;
import vn.struts.dao.ProductDAO;
import vn.struts.entity.Product;
@ParentPackage(value ="client")
@Action(value = "product-detail")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "product-detail" }),
		@Result(name = "show", location = "/WEB-INF/client/product-detail.jsp") })
public class ProductDetailController extends ValidationAwareSupport
		implements ModelDriven<Object> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7946780589712360071L;
	private Product model = new Product();
	private int id;
	
	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	// GET /product-detail/1
	public HttpHeaders show() {
		model = productDAO.findById(id);
		model.setView(model.getView()+1);
		productDAO.update(model);
		return new DefaultHttpHeaders("show");
	}

	// GET /admin/product
	public HttpHeaders index() {
		return new DefaultHttpHeaders("index").disableCaching();

	}

	// GET /admin/product/1/edit
	public String edit() {
		return "edit";
	}

	// GET /admin/product/new
	public String editNew() {
		model = new Product();
		return "editNew";
	}

	// GET /admin/product/1/deleteConfirm
	public String deleteConfirm() {
		return "deleteConfirm";
	}

	// DELETE /admin/product/1
	public HttpHeaders destroy() {
		if (productDAO.delete(id)) {
			addActionMessage("Xóa sản phẩm thàng công");
		} else {
			addActionError("Xoá sản phẩm thất bại");
		}
		return index();
	}

	// POST /admin/product
	public HttpHeaders create() {
		model.setCreated(new Date());
		if (productDAO.create(model)) {
			addActionMessage("Thêm sản phẩm thàng công");
		} else {
			addActionError("Thêm sản phẩm thất bại");
		}
		return new DefaultHttpHeaders("editNew").setLocationId(model.getId());
	}

	// PUT /admin/product/1
	public String update() {
		if (productDAO.update(model)) {
			addActionMessage("Sửa sản phẩm thàng công");
		} else {
			addActionError("Sửa sản phẩm thất bại");
		}
		return "edit";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		model = productDAO.findById(id);
		this.id = id;
	}

	public Collection<Product> getListProduct() {
		return productDAO.getByCatalogId(model.getCatalog().getId());
	}


	@Override
	public Object getModel() {
		return model;
	}

	

}
