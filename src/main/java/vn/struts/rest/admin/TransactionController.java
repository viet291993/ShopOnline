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

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.OrderDAO;
import vn.struts.dao.TransactionDAO;
import vn.struts.entity.Order;
import vn.struts.entity.Transaction;

@InterceptorRef("loginStack")
@ParentPackage(value ="admin")
@Namespace("/admin")
@Action(value = "transaction")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "transaction" }),
		@Result(name = "index", location = "/WEB-INF/admin/transaction/transaction-index.jsp"),
		@Result(name = "edit", location = "/WEB-INF/admin/transaction/transaction-edit.jsp"),
		@Result(name = "show", location = "/WEB-INF/admin/transaction/transaction-show.jsp") })
public class TransactionController extends ValidationAwareSupport implements ModelDriven<Object>,Validateable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7646780589712360071L;
	private Transaction model = new Transaction();
	private Long id;
	private Collection<Transaction> listTransaction;
	private Collection<Order> listOrder;
	

	@Autowired
	@Qualifier("TransactionDAO")
	private TransactionDAO transactionDAO;
	
	@Autowired
	@Qualifier("OrderDAO")
	private OrderDAO orderDAO;

	// GET /admin/transaction/1
	public HttpHeaders show() {
		return new DefaultHttpHeaders("show");
	}

	// GET /admin/transaction
	public HttpHeaders index() {
		listTransaction = transactionDAO.getAll();
		return new DefaultHttpHeaders("index").disableCaching();

	}

	// GET /admin/transaction/1/edit
	public String edit() {
		return "edit";
	}

	// GET /admin/transaction/new
	public String editNew() {
		model = new Transaction();
		return "editNew";
	}

	// GET /admin/transaction/1/deleteConfirm
	public String deleteConfirm() {
		return "deleteConfirm";
	}
	
	// DELETE /admin/transaction/1
	public HttpHeaders destroy() {
		if (transactionDAO.delete(id)) {
			addActionMessage("Xóa hóa đơn thàng công");
		} else {
			addActionError("Xoá hóa đơn thất bại");
		}
		return index();
	}

	// PUT /admin/transaction/1
	public String update() {
		if (transactionDAO.update(model)) {
			addActionMessage("Sửa hóa đơn thàng công");
		} else {
			addActionError("Sửa hóa đơn thất bại");
		}
		return "edit";
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		model = transactionDAO.findById(id);
		this.id = id;
	}
	
	
	

	public Collection<Order> getListOrder() {
		listOrder = orderDAO.getByTransactionId(id);
		return listOrder;
	}

	public void setListOrder(Collection<Order> listOrder) {
		this.listOrder = listOrder;
	}

	@Override
	public Object getModel() {
		return listTransaction != null ? listTransaction : model;
	}

	@Override
	public void validate() {
		if (!model.getName().matches("^\\S+.{0,49}$")) {
			addFieldError("name", "Họ tên không được bắt đầu bằng khoảng trống và dưới 50 ký tự");
		}
		if (!model.getAddress().matches("^\\S+.{0,250}")) {
			addFieldError("address", "Địa chỉ không được trống và bắt đầu bằng khoảng trắng");
		}
		if (!model.getPhone().matches("[0-9]{8,10}")) {
			addFieldError("phone", "Số điện thoại sai định dạng");
		}
		if (!model.getEmail().matches("^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$")) {
			addFieldError("email", "Email sai định dạng");
		}
		if (!model.getMessage().matches("^\\S+.{0,250}")) {
			addFieldError("message", "Lời nhắn không được trống và bắt đầu bằng khoảng trắng");
		}
	}
	
}
