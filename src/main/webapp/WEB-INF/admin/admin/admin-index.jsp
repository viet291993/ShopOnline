<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>admin</title>
</head>

<body>

	<h2>Hello, ${name}...!</h2>
	
	<s:actionerror />
	<table border="1">
	<tr>
		<th>Tài khoản</th>
		<th>Họ và tên</th>
		<th>Kích hoạt</th>
		<th></th>
		<th></th>
	</tr>	
		<s:iterator value="model" status="listStatus">
 	 <tr>
  	    <td><s:property value="username"/></td>
  	    <td	><s:property value="name"/></td>
  	    <td><s:property value="active"/></td>
  	    <td><a href="${pageContext.request.contextPath}/admin/<s:property value="id"/>/edit">Sửa</a></td>
  	    <td><a href="${pageContext.request.contextPath}/admin/<s:property value="id"/>/deleteConfirm">Xóa</a></td>
  	</tr>
		</s:iterator>
</table>
	
</body>
</html>