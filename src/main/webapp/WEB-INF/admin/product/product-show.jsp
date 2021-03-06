<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set var="title" value="%{getText('admin.product')}"/>
<s:set var="title1" value="%{getText('admin.product-show')}"/>
<t:template title="${title}" title1="${title1}">

	<jsp:attribute name="content">	 
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br />
							 <s:form action="admin/product/%{id}/edit" method="get" class="form-horizontal form-label-left" theme="simple">						 
						  <%-- Hình ảnh --%>
								<div class="form-group">
							     	<label for="image" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-image"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								    <img alt="ảnh sản phẩm" src="images/products/${model.image}"/>
								   
								    
								    </div>
							    </div>
							      <%-- Mã sản phẩm --%>
							     <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-code"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="id" name="id" disabled="true" class="form-control col-md-7 col-xs-12" /> 
								    </div>
								 </div>
							    <%-- Tên sản phẩm --%>
							     <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-name"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="name" name="name" disabled="true" class="form-control col-md-7 col-xs-12" /> 
								    </div>
								 </div>
							    <%-- Giá sản phẩm --%>
							     <div class="form-group">
							     	<label for="price" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-price"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="price" name="price" disabled="true" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							    <%-- Nội dung --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-content"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea id="content"  name="content" disabled="true" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							    <%-- Danh mục --%>
							     <div class="form-group">
							     	<label for="product" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.catalog"/></label>
							    	<div class="col-md-6 col-sm-6 col-xs-12">
							        	<s:textfield  id="catalog" name="catalog.name" disabled="true"
							        	 class="form-control col-md-7 col-xs-12"/>						
						 			</div>
							    </div>
							    
							    <!-- Sửa -->
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	<s:submit key="admin.edit"  cssClass="btn btn-warning"/>
						 			</div>
							    </div>
						  </s:form>
						  <a href="${pageContext.servletContext.contextPath}/admin/product" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> <s:text name="admin.back"/></a>					                        
					</div>
  </jsp:attribute>

	<jsp:attribute name="footer">
	
  

</jsp:attribute>

</t:template>