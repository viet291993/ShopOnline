<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set var="title" value="%{getText('admin.bill')}"/>
<s:set var="title1" value="%{getText('admin.bill-edit')}"/>
<t:template title="${title}" title1="${title1}">

	<jsp:attribute name="content">	
		<fmt:setLocale value="vi_VN"/>  
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br />
							 <s:form action="admin/transaction/%{id}" method="post" class="form-horizontal form-label-left" theme="simple">
							 <s:hidden name="_method" value="put" />	
							<%-- Mã hóa đơn --%>
							     <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-code"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="id"  disabled="true" name="id" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror  fieldName="id" />
						 			</div>
							    </div>
							    <%-- Ngày đặt hàng --%>
							     <div class="form-group">
							     	<label for="price" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-date"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								       <s:textfield disabled="true" name="created" format="dd-MM-yyyy"  class="form-control  col-md-7 col-xs-12"/>
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="created" />
						 			</div>
							    </div>
							    <%-- Tên khách hàng --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-customer-name"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="name" name="name" maxlength="50" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="name" />
						 			</div>
							    </div>
							    <%-- Địa chỉ --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-customer-address"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea id="address" name="address" maxlength="255" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="address" />
						 			</div>
							    </div>
							     <%-- Số điện thoại --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-customer-phone"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="phone" name="phone" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="phone" />
						 			</div>
							    </div>
							     <%-- Email --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12">Email</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="email" name="email" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="email" />
						 			</div>
							    </div>
							    <%-- Tin nhắn --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-customer-messenger"/></label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea id="messages" name="message" maxlength="255" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="message" />
						 			</div>
							    </div>
							   
							     <%-- Trạng thái --%>
							     <div class="form-group">
							     	<label for="product" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.bill-status"/></label>
							    	<div class="col-md-6 col-sm-6 col-xs-12">
							        	<s:select  id="status" name="status" class="form-control col-md-7 col-xs-12"
										list="#{'false':'Chưa xử lý', 'true':'Đã xử lý'}" />
						 			</div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="status" />
						 			</div>
							    </div>
							    
							    <!-- Xác nhận -->
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	<s:submit key="admin.confirm"  cssClass="btn btn-primary"/>
						 			</div>
							    </div>
						  </s:form>
						  <br>
						  <div class="clearfix"></div>
						   <table id="datatable" class="table table-striped table-bordered bulk_action">
                      <thead>
                        <tr>                        
						  <th width="5px"><s:text name="admin.no"/></th>
                       	  <th><s:text name="admin.product-image"/></th>						 
                          <th><s:text name="admin.product-code"/></th>
                          <th><s:text name="admin.product-name"/></th>
                          <th><s:text name="admin.product-price"/></th>
                          <th><s:text name="admin.product-qty"/></th>
                          <th><s:text name="admin.product-image"/></th>
                        </tr>
                      </thead>
                      <tbody>
                      	<s:iterator value="listOrder" status="listStatus">
					 	 <tr>
					 	 	<td><s:property value="%{#listStatus.index+1}"/></td>
					 	 	<td align="center" ><img height="30px" src="images/products/<s:property value='product.image'/>" /></td>
					  	    <td><s:property value="product.id"/></td>
					  	    <td><s:property value="product.name"/></td>
					  	    <td align="right"><fmt:formatNumber type="currency" ><s:property value="product.price"/></fmt:formatNumber></td>
					  	    <td align="right"><s:property value="qty"/></td>
					  	    <td align="right"><fmt:formatNumber type="currency" ><s:property value="amount"/></fmt:formatNumber></td>
					  	 </tr>
                      	</s:iterator>
                      	 <tr>
                      	 	<td align="center" colspan="6"><b><s:text name="admin.bill-total"/></b></td>
                      	 	<td align="right"><fmt:formatNumber type="currency" ><s:property value="amount"/></fmt:formatNumber></td>
                      	 </tr>
                      </tbody>
                    </table>
						  <a href="${pageContext.servletContext.contextPath}/admin/transaction" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> <s:text name="admin.back"/></a>					                        
					 </div>
  </jsp:attribute>

 <jsp:attribute name="footer">
</jsp:attribute>

</t:template>