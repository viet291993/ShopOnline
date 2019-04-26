<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set var="title" value="%{getText('admin.product')}"/>
<s:set var="title1" value="%{getText('admin.product-new')}"/>
<t:template title="${title}" title1="${title1}">

	<jsp:attribute name="content">	 
                   <div class="clearfix"></div>
						<div class="x_content">
						  <br/>						     
							<s:form action="product" method="post"  enctype="multipart/form-data" class="form-horizontal form-label-left" theme="simple">
								<%-- Hình ảnh --%>
								<div class="form-group">
							     	<label for="image" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-image"/><span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								    	<s:set name="testImage" value="image"/>
								    	<img  id="image"  height="200px" 	src="images/products/<s:if test="%{#testImage==null}">NoImage.png</s:if><s:else><s:property value="image"/></s:else>"/>
								        <s:hidden id="txtanhgoc" name="image" />
								        <s:file name="upload" id="chooseimg"  accept="image/*"/>
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="image" />
						 			</div>
							    </div>
							   
							    <%-- Tên sản phẩm --%>
							     <div class="form-group">
							     	<label for="name" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-name"/><span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="name" name="name" maxlength="50" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror  fieldName="name" />
						 			</div>
							    </div>
							    <%-- Giá sản phẩm --%>
							     <div class="form-group">
							     	<label for="price" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-price"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textfield id="price" name="price" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="price" />
						 			</div>
							    </div>
							    <%-- Nội dung --%>
							     <div class="form-group">
							     	<label for="content" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.product-content"/> <span class="required">*</span> </label>
								    <div class="col-md-6 col-sm-6 col-xs-12">
								        <s:textarea id="content" name="content" maxlength="255" class="form-control col-md-7 col-xs-12" /> 
								    </div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="content" />
						 			</div>
							    </div>
							    <%-- Danh mục --%>
							     <div class="form-group">
							     	<label for="product" class="control-label col-md-3 col-sm-3 col-xs-12"><s:text name="admin.catalog"/></label>
							    	<div class="col-md-6 col-sm-6 col-xs-12">
							        	<s:select  id="catalog" name="catalog.id"
							        	headerKey="" headerValue=" --- Chọn danh mục ---" class="form-control col-md-7 col-xs-12"
										list="listCatalogSelect" listKey="id" listValue="name"/>						
						 			</div>
							    </div>
							     <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	 <s:fielderror fieldName="catalog" />
						 			</div>
							    </div>
							    <div class="form-group">
							    	<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							        	<s:submit key="admin.confirm"  cssClass="btn btn-primary"/>
							        	<s:reset key="admin.refresh" cssClass="btn btn-warning"/>
						 			</div>
							    </div>
						  </s:form>
						  <a href="${pageContext.servletContext.contextPath}/admin/product" class="btn btn-info" type="button">  <span class="glyphicon glyphicon-arrow-left"></span> <s:text name="admin.back"/></a>					                        
					 </div>
  </jsp:attribute>
  <jsp:attribute name="footer">
	 <script type="text/javascript">
		var file = document.getElementById('chooseimg');
		var img = document.getElementById('image');
		file.addEventListener("change", function() {
			if (this.value) {
					var file = this.files[0];
					var reader = new FileReader();
					reader.onloadend = function () {
						img.src = reader.result;
					};	
					reader.readAsDataURL(file);	
			}
		});
	</script>
</jsp:attribute>

</t:template>