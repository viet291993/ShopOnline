package vn.struts.rest.client;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
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

@ParentPackage(value = "client")
@Namespace("/")
@Action(value = "blog")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "blog" }),
		@Result(name = "index", location = "/WEB-INF/client/blog-index.jsp") })
public class BlogController extends ValidationAwareSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646780589712360071L;
	private int id;

	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	// GET /shop/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("index");
	}

	// GET /shop
	public HttpHeaders index() {
		return new DefaultHttpHeaders("index").disableCaching();

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {

		this.id = id;
	}

}
