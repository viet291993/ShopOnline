<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8"%>
<%@attribute name="title" required="true" rtexprvalue="true"%>
<%@attribute name="title1" required="true" rtexprvalue="true"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="content" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<%@attribute name="contentTop" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="en">
<head>
<style type="text/css">
	.actionMessage {
		margin-left: 0px;
		padding-left: 0px;
		color: white;
	}
	
	.actionMessage > li {
		list-style-type: none;
	}
	
	.errorMessage > li {
		list-style-type: none;
	}
	
	.errorMessage {
		margin-left: 0px;
		padding-left: 0px;
		color: red;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico" type="image/ico" />
<title>Home</title>
<base href="${pageContext.servletContext.contextPath}/">

<!-- Bootstrap -->
<link href="resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="resources/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">


<jsp:invoke fragment="head" />
<!-- Custom Theme Style -->
<link href="resources/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="${pageContext.servletContext.contextPath}/admin/home"
							class="site_title"><i class="fa fa-ge"></i> <span> Aquarium HL </span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img alt="..." src="images/Icon/admin.jpg"
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Xin chào !</span>
							<h2>  ${sessionScope.ADMIN.name}</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>Hệ thống</h3>
							<ul class="nav side-menu">
								<li><a
									href="${pageContext.servletContext.contextPath}/admin/home"> <i
										class="fa fa-home"></i> Trang chủ <span></span>
								</a></li>
								<li><a
									href="${pageContext.servletContext.contextPath}/admin/user"><i
										class="fa fa-user"></i> Khách hàng <span></span></a></li>
								<li>
								<li>
								<a
									href="${pageContext.servletContext.contextPath}/admin/catalog"><i
										class="fa fa-sitemap"></i> Danh mục <span></span></a></li>
								<li><a
									href="${pageContext.servletContext.contextPath}/admin/product"><i
										class="fa fa-cube"></i> Sản phẩm <span></span></a></li>
								<li><a
									href="${pageContext.servletContext.contextPath}/admin/transaction"><i
										class="fa fa-file-text-o"></i> Hóa đơn <span></span></a></li>
							</ul>
						</div>

						<div class="menu_section">
							<h3>Tài khoản</h3>
							<ul class="nav side-menu">
								<li><a href="${pageContext.servletContext.contextPath}/User/Profile"><i class="fa fa-info-circle"></i> Thông tin cá nhân </a>
									</li>
								<li><a><i class="fa fa-envelope"></i> Hòm thư
									<span class="label label-success pull-right">Coming Soon</span></a>
									</li>

								<li><a href="${pageContext.servletContext.contextPath}/User/ChangePassword"><i class="fa fa-key"></i>Đổi mật khẩu </a></li>
							</ul>
						</div>

					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Cài đặt">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Đăng xuất"
							href="${pageContext.servletContext.contextPath}/admin/logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
										
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> 
								<img  alt="..." src="images/Icon/admin.jpg">${sessionScope.ADMIN.name}   <span class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="${pageContext.servletContext.contextPath}/User/Profile">Thông tin cá nhân</a></li>
									<li><a href="javascript:;"> <span
											class="badge bg-red pull-right"></span> <span>Cài đặt</span>
									</a></li>
									<li><a href="javascript:;">Trợ giúp</a></li>
									<li><a
										href="${pageContext.servletContext.contextPath}/admin/logout"><i
											class="fa fa-sign-out pull-right"></i>Đăng xuất</a></li>
								</ul></li>

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green"></span>
							</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/home?language=en"> <img src="images/Icon/en.png" ></a></li>
									<li><a href="${pageContext.servletContext.contextPath}/home?language=vi_VN"><img src="images/Icon/vi.png" ></a></li>
							
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>${title}</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search ..."> <span
										class="input-group-btn">
										<button class="btn btn-default " type="button">
											<span class="fa fa-search"></span>
										</button>
									</span>
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
					
				
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>${title1}</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a >Settings 1</a></li>
												<li><a >Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
										   											
								<s:if test="hasActionErrors()">
								   <div id="error" class="alert alert-danger" role="alert">
 											 <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 											 <s:actionerror/>
								   </div>
								</s:if>	
								<s:if test="hasActionMessages()">
								   <div id="message"  class="alert alert-success" role="alert">
 											 <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
 											 <s:actionmessage/>
								   </div>
								</s:if>								
									<jsp:invoke fragment="content" />								
							</div>
						</div>
					</div>
							<jsp:invoke fragment="contentTop"></jsp:invoke>								
				</div>
			</div>
			<!-- /page content -->



			<footer>
				<div class="pull-right">
					<a>Cá cảnh Hạ Long</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>



	<!-- jQuery -->
	<script src="resources/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="resources/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="resources/vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="resources/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="resources/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- iCheck -->
	<script src="resources/vendors/iCheck/icheck.min.js"></script>


	<!-- footer -->
	<jsp:invoke fragment="footer" />

	<!-- Custom Theme Scripts -->
	<script src="resources/build/js/custom.min.js"></script>
	<script type="text/javascript">	
	window.setTimeout(function() {
	    $("#message").fadeTo(500, 0).slideUp(500);
	}, 4000);	
	window.setTimeout(function() {
	    $("#error").fadeTo(500, 0).slideUp(500);
	}, 4000);
	</script>
</body>
</html>
