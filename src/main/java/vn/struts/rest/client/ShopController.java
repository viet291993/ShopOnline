package vn.struts.rest.client;

import java.util.Collection;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.CatalogDAO;
import vn.struts.dao.ProductDAO;
import vn.struts.entity.Catalog;
import vn.struts.entity.Product;
@ParentPackage(value ="client")
@Action(value = "shop")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "shop" }),
		@Result(name = "index", location = "/WEB-INF/client/shop-index.jsp")})
public class ShopController extends ValidationAwareSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646780589712360071L;
	private int id;
	private Collection<Product> listProduct;
	
	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	// GET /shop/1
	public HttpHeaders show() {
		listProduct = productDAO.getByCatalogId(id);
		return new DefaultHttpHeaders("index");
	}

	// GET /shop
	public HttpHeaders index() {
		listProduct = productDAO.getAll();
		return new DefaultHttpHeaders("index").disableCaching();

	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		
		this.id = id;
	}

	public Collection<Catalog> getListCatalog() {
		return catalogDAO.getAll();
	}

	public Collection<Product> getListProduct() {
		return this.listProduct;
	}

}
