package vn.struts.rest.admin;

import java.io.File;
import java.util.Collection;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.CatalogDAO;
import vn.struts.dao.OrderDAO;
import vn.struts.dao.ProductDAO;
import vn.struts.entity.Catalog;
import vn.struts.entity.Product;

@InterceptorRef("loginStack")
@ParentPackage(value = "admin")
@Namespace("/admin")
@Action(value = "product")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "product" }),
		@Result(name = "index", location = "/WEB-INF/admin/product/product-index.jsp"),
		@Result(name = "editNew", location = "/WEB-INF/admin/product/product-editNew.jsp"),
		@Result(name = "edit", location = "/WEB-INF/admin/product/product-edit.jsp"),
		@Result(name = "show", location = "/WEB-INF/admin/product/product-show.jsp") })
public class ProductController extends ValidationAwareSupport
		implements ModelDriven<Object>, ServletRequestAware, Validateable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7946780589712360071L;
	private Product model = new Product();
	private int id;
	private Collection<Product> listProduct;
	private File file;
	@SuppressWarnings("unused")
	private String contentType;
	private String filename;
	private HttpServletRequest request;

	@Autowired
	@Qualifier("ProductDAO")
	private ProductDAO productDAO;

	@Autowired
	@Qualifier("CatalogDAO")
	private CatalogDAO catalogDAO;

	@Autowired
	@Qualifier("OrderDAO")
	private OrderDAO orderDAO;

	// GET /admin/product/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("show");
	}

	// GET /admin/product
	public HttpHeaders index() {
		listProduct = productDAO.getAll();
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
		if (!orderDAO.getByProductId(id).isEmpty()) {
			addActionError("Xoá sản phẩm thất bại , bạn phải xóa hóa đơn có sản phẩm trước");
			return index();
		}
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

	public Collection<Catalog> getListCatalogSelect() {
		return catalogDAO.getAll();
	}

	public void setUpload(File file) {
		this.file = file;
	}

	public void setUploadContentType(String contentType) {
		this.contentType = contentType;
	}

	public void setUploadFileName(String filename) {
		this.filename = filename;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	@Override
	public Object getModel() {
		return listProduct != null ? listProduct : model;
	}

	@Override
	public void validate() {
		if (!model.getName().matches("^\\S+.*")) {
			addFieldError("name", "Tên sản phẩm không được bắt đầu bằng khoảng trống và dưới 100 ký tự");
		}
		if (model.getImage().isEmpty() && file == null) {
			addFieldError("image", "Ảnh sản phẩm không được trống");
		} else if (file != null) {
			if (!uploadPhoto(file, filename)) {
				addFieldError("image", "Lỗi tải ảnh sản phẩm");
			} else {
				model.setImage(filename);
			}
		}
		if (!model.getContent().matches("^\\S+.*")) {
			addFieldError("content", "Nội dung sản phẩm không được trống và bắt đầu bằng khoảng trắng");
		}
		if (model.getPrice() == 0) {
			addFieldError("price", "Giá sản phẩm không được trống");
		}
		if (model.getCatalog().getId() == null) {
			addFieldError("catalog", "Danh mục không được trống");
		}
	}

	public boolean uploadPhoto(File file, String fileName) {
		try {
			String path = request.getServletContext().getRealPath("/images/products/");
			File destFile = new File(path, fileName);
			FileUtils.copyFile(file, destFile);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
