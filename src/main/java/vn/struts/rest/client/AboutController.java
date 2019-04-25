package vn.struts.rest.client;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;

import com.opensymphony.xwork2.ValidationAwareSupport;
@ParentPackage(value ="client")
@Namespace("/")
@Action(value = "about")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "about" }),
		@Result(name = "index", location = "/WEB-INF/client/client-about.jsp") })
public class AboutController extends ValidationAwareSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7946780589712360071L;
	// GET /about
	public HttpHeaders index() {
		return new DefaultHttpHeaders("index").disableCaching();
	}
}
