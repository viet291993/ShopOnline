<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Struts 2 - Login Application</title>
</head>

<body>

	<jsp:include page="_menu.jsp" />


	<h2>Struts 2 - Đăng nhập</h2>
	<s:actionerror />

	<s:form action="/login" method="post" validate="true">
		<s:textfield name="username" label="Tài khoản" size="20" />
		<s:password name="password" label="Mật khẩu" size="20" />
		<s:submit method="execute" label="Đăng nhập" align="center" />
	</s:form>


</body>

</html>