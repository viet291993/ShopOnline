<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<t:template title="Danh mục" title1="Danh mục">
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
                       <th>STT</th>
                       <th>Tên danh mục</th>
                       <th align="center"><a href="${pageContext.servletContext.contextPath}/Product/Add"
							type="submit" class="btn btn-success btn-xs">
							<span data-toggle="tooltip" title="Thêm mới" class="glyphicon glyphicon-plus"></span></a></th>
                   </tr>
                 </thead>
                  <tbody>
                   	<s:iterator value="model" status="listStatus">
					 	 <tr>
					 	 	<td><s:property value="%{#listStatus.index}"/></td>
					  	    <td><s:property value="name"/></td>
					  	    <td><a href="${pageContext.request.contextPath}/admin/<s:property value="id"/>/edit">Sửa</a></td>
					  	    <td><a href="${pageContext.request.contextPath}/admin/<s:property value="id"/>/deleteConfirm">Xóa</a></td>
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
        							<h4 class="modal-title custom_align" id="Heading">Xóa sản phẩm</h4>
     						 </div>
          <div class="modal-body">      
       			<div class="alert alert-danger">
				<span class="glyphicon glyphicon-warning-sign"></span>Bạn có muốn xóa sản phẩm <span id="nd"></span>  ?</div>
       
     	 </div>
        <div class="modal-footer ">
        	
       		 <a id="idDelelte"	href="#" class="btn btn-success">
				<span class="glyphicon glyphicon-ok-sign"></span> Đồng ý</a>
       			<button type="button" class="btn btn-default" data-dismiss="modal">
					<span class="glyphicon glyphicon-remove"></span> Hủy bỏ
				</button>
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
	document.getElementById("idDelelte").href= hre.value +'/Depart/Delete?ID=' + id;
	
}

</script>

</jsp:attribute>

</t:template>