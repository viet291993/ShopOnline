<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<t:template title="Danh mục" title1="Sửa danh mục">

	<jsp:attribute name="content">	 
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br />
							 <s:form action="admin/catalog/%{id}" method="post" class="form-horizontal form-label-left" theme="simple">
							 <s:hidden name="_method" value="put" />	
						    <div class="form-group">
						      <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Tên danh mục<span class="required">*</span> </label>
						      <div class="col-md-6 col-sm-6 col-xs-12">
						        <s:textfield id="name" name="name" required="required" class="form-control col-md-7 col-xs-12" /> 
						      </div>
						    </div>
						    <div class="form-group">
						     <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						        <s:submit value="Xác nhận"  cssClass="btn btn-primary"/>
					 			     </div>
						    </div>
						  </s:form>
						  <a href="${pageContext.servletContext.contextPath}/admin/catalog" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> Quay lại</a>					                        
					 </div>
  </jsp:attribute>

	<jsp:attribute name="footer">
	
  

</jsp:attribute>

</t:template>