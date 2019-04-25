package vn.struts.rest.client;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.TransactionDAO;
import vn.struts.entity.Order;
import vn.struts.entity.Transaction;

@ParentPackage(value = "client")
@Namespace("/")
@Action(value = "cart")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "cart" }),
		@Result(name = "editNew", location = "/WEB-INF/client/cart-index.jsp") })
public class CartController extends ValidationAwareSupport implements ModelDriven<Object>, Validateable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646780589712360071L;
	private int id;
	private Transaction model = new Transaction();
	private List<Order> listitem;
	private int noti = 0; 

	@Autowired
	@Qualifier("TransactionDAO")
	private TransactionDAO transactionDAO;

	// GET /cart/
	public HttpHeaders show() {
		return new DefaultHttpHeaders("index");
	}

	// GET /cart
	public HttpHeaders index() {
		return new DefaultHttpHeaders("editNew").disableCaching();
	}

	// GET /cart
	public String edit() {
		return "edit";
	}

	// POST /cart
	public HttpHeaders create() {
		model.setCreated(new Date());
		if (transactionDAO.create(model, listitem)) {
			setNoti(1);
			System.out.println("Thêm hóa đơn thàng công");
		} else {
			setNoti(2);
			System.out.println("Thêm hóa đơn thất bại");
		}
		return new DefaultHttpHeaders("editNew").setLocationId(model.getId());
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {

		this.id = id;
	}

	public List<Order> getListitem() {
		return listitem;
	}

	public void setListitem(List<Order> listitem) {
		this.listitem = listitem;
	}

	public int getNoti() {
		return noti;
	}

	public void setNoti(int noti) {
		this.noti = noti;
	}

	@Override
	public Object getModel() {
		return this.model;
	}

	@Override
	public void validate() {
		if (listitem==null) {
			addFieldError("list", "Chưa có sản phẩm trong giỏ hàng");
		}
		if (!model.getName().matches("^\\S+.*")) {
			addFieldError("name", "Họ tên không được bắt đầu bằng khoảng trống và dưới 100 ký tự");
		}
		if (!model.getAddress().matches("^\\S+.*")) {
			addFieldError("address", "Địa chỉ không được trống và bắt đầu bằng khoảng trắng");
		}
		if (!model.getPhone().matches("[0-9]{8,10}")) {
			addFieldError("phone", "Số điện thoại sai định dạng");
		}
		if (!model.getEmail().matches("^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$")) {
			addFieldError("email", "Email sai định dạng");
		}
		if (!model.getMessage().matches("^\\S+.*")) {
			addFieldError("message", "Lời nhắn không được trống và bắt đầu bằng khoảng trắng");
		}
		setNoti(0);
	}

}
