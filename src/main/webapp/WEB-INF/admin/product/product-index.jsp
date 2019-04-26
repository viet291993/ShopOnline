<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set var="title" value="%{getText('admin.product')}"/>
<s:set var="title1" value="%{getText('admin.product-list')}"/>
<t:template title="${title}" title1="${title1}">

	<jsp:attribute name="head">

 <!-- Datatables --> 
    <link href="resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

</jsp:attribute>
	<jsp:attribute name="content">            
    	<div class="x_content">
			<p class="text-muted font-13 m-b-30"></p>
               <table id="datatable-buttons" class="table table-striped table-bordered">                         
                  <thead>                         
                    <tr>              
                       <th width="5px"><s:text name="admin.no"/></th>
                       <th><s:text name="admin.product-image"/></th>
                       <th><s:text name="admin.product-code"/></th>
                       <th><s:text name="admin.product-name"/></th>
                       <th><s:text name="admin.product-price"/></th>
                       <th><s:text name="admin.product-date"/></th>
					   <th><s:text name="admin.product-view"/></th>
                       <th align="center"><a href="${pageContext.servletContext.contextPath}/admin/product/new"
							type="button" class="btn btn-success btn-xs">
							<span data-toggle="tooltip" title="<s:text name='admin.new'/>" class="glyphicon glyphicon-plus"></span></a></th>
                   </tr>
                 </thead>       
                  <tbody>
                   	<s:iterator value="model" status="listStatus">
					 	 <tr>
					 	 	<td><s:property value="%{#listStatus.index+1}"/></td>
					 	 	<td align="center" ><img height="30px" src="images/products/<s:property value='image'/>" /></td>
					 	 	<td><s:property value="id"/></td>
					  	    <td><s:property value="name"/></td>
					  	    <fmt:setLocale value="vi_VN"/>
					  	    <td align="right"><fmt:formatNumber type="currency" ><s:property value="price"/></fmt:formatNumber></td>
					  	    <td align="right"><s:date name="created" format="dd/MM/yyyy" /></td> 
					  	    <td align="right"><s:property value="view"/></td>
					  	    <td  width="12%" align="center">
					  	    	<a type="button"  href="${pageContext.request.contextPath}/admin/product/<s:property value='id'/>" class="btn btn-default btn-xs">
					  	      		<span data-toggle="tooltip" title="<s:text name='admin.show'/>" class="glyphicon glyphicon-eye-open"></span></a>
					  	    	<a type="button"  href="${pageContext.request.contextPath}/admin/product/<s:property value='id'/>/edit" class="btn btn-primary btn-xs">
					  	      		<span data-toggle="tooltip" title="<s:text name='admin.edit'/>" class="glyphicon glyphicon-pencil"></span></a>
					  	   	    <a type="button" onclick="chayNgayDi(<s:property value="id"/>,'<s:property value="name"/>')" class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
									<span data-toggle="tooltip" title="<s:text name='admin.delete'/>" class="glyphicon glyphicon-trash"></span></a>
					  	    </td>
					     </tr>
					</s:iterator>                                                          
				</tbody>
			</table>
				<input id="hre" type="hidden" value="${pageContext.servletContext.contextPath}">		
			    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">             
     				 <div class="modal-dialog">
   						 <div class="modal-content">
          					<div class="modal-header">
       							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
								</button>
        							<h4 class="modal-title custom_align" id="Heading"><s:text name="msg.deleteProduct"/></h4>
     						 </div>
          <div class="modal-body">      
       			<div class="alert alert-danger">
				<span class="glyphicon glyphicon-warning-sign"></span> <s:text name="msg.deleteProduct?"/> <span id="nd"></span>  ?</div>
       
     	 </div>
        <div class="modal-footer ">
        	 <form id="idDelelte" action="#" method="post">
       		 	<button class="btn btn-success">
				<span class="glyphicon glyphicon-ok-sign"></span> <s:text name="msg.ok"/></button>
       			<button type="button" class="btn btn-default" data-dismiss="modal">
					<span class="glyphicon glyphicon-remove"></span> <s:text name="msg.cancel"/>
				</button>
			</form>	
     				</div>
       			 </div>
       		 </div>
		</div>      
  	</div>
              
  </jsp:attribute>

	<jsp:attribute name="footer">
	
    <!-- Datatables -->
    <script src="resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="resources/vendors/jszip/dist/jszip.min.js"></script>
    <script src="resources/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="resources/vendors/pdfmake/build/vfs_fonts.js"></script>
 <script>
var hre = document.getElementById("hre")
function chayNgayDi(id,name) {
	document.getElementById("nd").innerHTML= name;
	document.getElementById("idDelelte").action = hre.value +'/admin/product/'+id+'?_method=DELETE';
}

</script>

</jsp:attribute>

</t:template>