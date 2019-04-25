<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<t:template title="Hóa đơn" title1="Hóa đơn chi tiết">

	<jsp:attribute name="content">	
		<fmt:setLocale value="vi_VN"/>  
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br />
							 <s:form action="admin/transaction/%{id}/edit" method="get" class="form-horizontal form-label-left" theme="simple">
							<%-- Mã hóa đơn --%>
							     <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Mã hóa đơn</label>
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
							     	<label for="price" class="control-label col-md-3 col-sm-3 col-xs-12">Ngày đặt hàng</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								       <span  class="form-control  col-md-7 col-xs-12"><s:date name="created"  format="dd/MM/yyyy" /></span>
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="created" />
						 			</div>
							    </div>
							    <%-- Tên khách hàng --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12">Tên khách hàng</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield disabled="true" id="name" name="name" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="name" />
						 			</div>
							    </div>
							    <%-- Địa chỉ --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12">Địa chỉ</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea disabled="true" id="address" name="address" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="address" />
						 			</div>
							    </div>
							     <%-- Số điện thoại --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12">Số điện thoại</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield disabled="true" id="phone" name="phone" class="form-control col-md-7 col-xs-12" /> 
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
								        <s:textfield disabled="true" id="email" name="email" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="email" />
						 			</div>
							    </div>
							    <%-- Tin nhắn --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12">Tin nhắn</label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea disabled="true" id="messages" name="message" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="message" />
						 			</div>
							    </div>
							   
							     <%-- Trạng thái --%>
							     <div class="form-group">
							     	<label for="product" class="control-label col-md-3 col-sm-3 col-xs-12">Trạng thái</label>
							    	<div class="col-md-6 col-sm-6 col-xs-12">
							        	<s:select disabled="true"  id="status" name="status" class="form-control col-md-7 col-xs-12"
										list="#{'false':'Chưa xử lý', 'true':'Đã xử lý'}" />
						 			</div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="status" />
						 			</div>
							    </div>
							    
							    <!-- Sửa -->
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	<s:submit value="Sửa"  cssClass="btn btn-warning"/>
						 			</div>
							    </div>
						  </s:form>
						  <br>
						  <div class="clearfix"></div>
						   <table id="datatable" class="table table-striped table-bordered bulk_action">
                      <thead>
                        <tr>                        
						  <th width="5px">STT</th>
                       	  <th>Hình ảnh</th>						 
                          <th>Mã sản phẩm</th>
                          <th>Tên sản phẩm</th>
                          <th>Giá sản phẩm</th>
                          <th>Số lượng</th>
                          <th>Thành tiền</th>
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
                      	 	<td align="center" colspan="6"><b>Tổng tiền</b></td>
                      	 	<td align="right"><fmt:formatNumber type="currency" ><s:property value="amount"/></fmt:formatNumber></td>
                      	 </tr>
                      </tbody>
                    </table>
						  <a href="${pageContext.servletContext.contextPath}/admin/transaction" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> Quay lại</a>					                        
					 </div>
  </jsp:attribute>

 <jsp:attribute name="footer">
</jsp:attribute>

</t:template>