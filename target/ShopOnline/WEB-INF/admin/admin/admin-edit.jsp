<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>admin</title>
	<s:head/>
</head>

<body>

	<h2>Struts 2 - Cập nhật</h2>

	<s:actionerror />

	<s:form action="update" method="post" validate="true">
		<s:hidden name="id"/>
		<s:hidden name="username"/>
		<s:hidden name="password"/>
		<s:textfield name="name" label="Họ và tên" size="20" />
		<s:checkbox name="active" label="Kích hoạt" ></s:checkbox>
		<s:submit  value="Cập nhật" align="center" />
	</s:form>
	
	<a href="${pageContext.request.contextPath}/userInfo">Quay lại</a>


</body>

</html>