
package vn.struts.rest.client;

import java.util.Collection;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.ProductDAO;
import vn.struts.entity.Product;

@ParentPackage(value = "client")
@Actions({ @Action(value = "/"), @Action(value = "home") })
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "home" }),
		@Result(name = "index", location = "/WEB-INF/client/client-index.jsp") })
public class HomeController extends ValidationAwareSupport implements ModelDriven<Object> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7946780589712360071L;
	private Product model = new Product();
	private int id;
	private Collection<Product> listProduct;

	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	// GET /admin/product/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("show");
	}

	// GET /home
	public HttpHeaders index() {
		listProduct = productDAO.getAll();
		return new DefaultHttpHeaders("index").disableCaching();

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		model = productDAO.findById(id);
		this.id = id;
	}

	@Override
	public Object getModel() {
		return listProduct != null ? listProduct : model;
	}

}
