<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>admin</title>
<s:head />
</head>

<body>
	<jsp:include page="_menu.jsp" />
	<h2>Struts 2 - Đăng ký</h2>

	<s:actionerror />

	<s:form action="admin" method="post">
		<s:textfield name="username" label="Tài khoản" size="20" />
		<s:password name="password" label="Mật khẩu" size="20" />
		<s:password name="confirm" label="Xác nhận mật khẩu" size="20" />
		<s:textfield name="name" label="Họ và tên" size="20" />
		<s:checkbox name="active" label="Kích hoạt"></s:checkbox>
		<s:submit value="Đăng ký" align="center" />
	</s:form>


</body>

</html>