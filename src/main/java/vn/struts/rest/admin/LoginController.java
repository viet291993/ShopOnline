/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package vn.struts.rest.admin;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.rest.DefaultHttpHeaders;
import org.apache.struts2.rest.HttpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Validateable;
import com.opensymphony.xwork2.ValidationAwareSupport;

import vn.struts.dao.AdminDAO;
import vn.struts.entity.Admin;

@ParentPackage(value = "admin")
@Namespace("/admin")
@Action(value = "login")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "login" }),
		@Result(name = "home", type = "redirectAction", params = { "actionName", "home" }),
		@Result(name = "editNew", location = "/WEB-INF/admin/loginAdmin.jsp"), })
public class LoginController extends ValidationAwareSupport implements ModelDriven<Object>, SessionAware, Validateable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2399800850123036451L;
	private Admin model = new Admin();
	private Map<String, Object> session;

	@Autowired
	@Qualifier("AdminDAO")
	private AdminDAO adminDAO;

	// GET /admin /login
	public HttpHeaders index() {
		if(session.get("ADMIN")!=null) {
			return new DefaultHttpHeaders("home").setLocationId(model.getId());
		}
		return new DefaultHttpHeaders("editNew").disableCaching();
	}
	

	// POST /admin /login
	public HttpHeaders create() {
		Admin admin = adminDAO.checkLogin(model.getUsername(),model.getPassword());
		if (admin != null) {
			session.put("ADMIN", admin);
			return new DefaultHttpHeaders("home").setLocationId(model.getId());
		} else {
			addFieldError("login", "Tài khoản hoặc mật khẩu không đúng");
			return new DefaultHttpHeaders("editNew").disableCaching();
		}
	}

	@Override
	public Object getModel() {
		return model;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	@Override
	public void validate() {
		if (model.getUsername() == null || model.getUsername().length() == 0) {
			addFieldError("username", "Tài khoản không được trống");
		}
		if (model.getPassword() == null || model.getPassword().length() == 0) {
			addFieldError("password", "Mật khẩu không được trống");
		}
		
	}

}
