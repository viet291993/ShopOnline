s<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set var="title" value="%{getText('admin.catalog')}"/>
<s:set var="title1" value="%{getText('admin.catalog-new')}"/>
<t:template title="${title}" title1="${title1}">

	<jsp:attribute name="content">	 
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br/>						     
							<s:form action="catalog" method="post" class="form-horizontal form-label-left" theme="simple">
							    <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.catalog-name"/><span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="name" name="name" maxlength="50" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="name" />
						 			</div>
							    </div>
							    <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	<s:submit key="admin.confirm"  cssClass="btn btn-primary"/>
						 			</div>
							    </div>
							   
							    
						  </s:form>
						  <a href="${pageContext.servletContext.contextPath}/admin/catalog" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> <s:text name="admin.back"/></a>					                        
					 </div>
  </jsp:attribute>
	<jsp:attribute name="footer">

</jsp:attribute>

</t:template>