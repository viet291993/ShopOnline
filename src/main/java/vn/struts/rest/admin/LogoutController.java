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

@ParentPackage(value = "admin")
@Namespace("/admin")
@Action(value = "logout")
@Results({ @Result(name = "success", type = "redirectAction", params = { "actionName", "logout" }),
		@Result(name = "index", location = "/WEB-INF/admin/loginAdmin.jsp"), })
public class LogoutController implements SessionAware {

	
	private Map<String, Object> session;


	// GET /admin /login
	public HttpHeaders index() {
		session.remove("ADMIN");
		return new DefaultHttpHeaders("index").disableCaching();
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}
