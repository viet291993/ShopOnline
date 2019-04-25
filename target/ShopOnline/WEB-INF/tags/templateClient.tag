<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true"%>
<%@attribute name="content" fragment="true"%>
<%@attribute name="footer" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="s" uri="/struts-tags"%>


<html lang="en">
<head>
<title>Home</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<jsp:invoke fragment="head" />

</head>
<body class="nav-md">
<!-- Header -->
	<!-- header fixed -->
	<div class="wrap_header fixed-header2 trans-0-4">
		<!-- Logo -->
		<a href="${pageContext.servletContext.contextPath}/home" class="logo">
			<img src="images/icons/logo.png" alt="IMG-LOGO">
		</a>

		<!-- Menu -->
		<div class="wrap_menu">
			<nav class="menu">
				<ul class="main_menu">
					<li>
						<a href="${pageContext.servletContext.contextPath}/home">Trang chủ</a>
					</li>

					<li>
						<a href="${pageContext.servletContext.contextPath}/shop">Sản phẩm</a>
					</li>

					<li>
						<a href="${pageContext.servletContext.contextPath}/blog">Tin tức</a>
					</li>

					<li>
						<a href="${pageContext.servletContext.contextPath}/about">Giới thiệu</a>
					</li>

					<li>
						<a href="${pageContext.servletContext.contextPath}/contact">Liên hệ</a>
					</li>
				</ul>
			</nav>
		</div>

		<!-- Header Icon -->
		<div class="header-icons">
			<a href="https://www.facebook.com/cacanhhalong1992/" class="header-wrapicon1 dis-block">
				<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
			</a>

			<span class="linedivide1"></span>

			<div class="header-wrapicon2">
				<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
				<span class="cart-quantity header-icons-noti" >0</span>

				<!-- Header cart noti -->
				<div class="header-cart header-dropdown">
					<ul class="cart-noti header-cart-wrapitem">
					</ul>
					<div class="cart-total header-cart-total">
						Tổng tiền: 0 đ
					</div>

					<div class="header-cart-buttons">
							<!-- Button -->
							<a href="${pageContext.servletContext.contextPath}/cart" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
								Xem giỏ hàng
							</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- top noti -->
	<div class="flex-c-m size22 bg0 s-text21 pos-relative">
		Giảm 20% mọi thứ
		<a href="${pageContext.servletContext.contextPath}/shop" class="s-text22 hov6 p-l-5">
			Mua ngay
		</a>

		<button class="flex-c-m pos2 size23 colorwhite eff3 trans-0-4 btn-romove-top-noti">
			<i class="fa fa-remove fs-13" aria-hidden="true"></i>
		</button>
	</div>

	<!-- Header -->
	<header class="header2">
		<!-- Header desktop -->
		<div class="container-menu-header-v2 p-t-26">
			<div class="topbar2">
				<div class="topbar-social">
					<a href="#" class="topbar-social-item fa fa-facebook"></a>
					<a href="#" class="topbar-social-item fa fa-instagram"></a>
					<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
					<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
					<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
				</div>

				<!-- Logo2 -->
				<a href="${pageContext.servletContext.contextPath}/home" class="logo2">
					<img src="images/icons/logo.png" alt="IMG-LOGO">
				</a>

				<div class="topbar-child2">
					<span class="topbar-email">
						Cacanhhalonh.com
					</span>

					<div class="topbar-language rs1-select2">
						<select class="selection-1" name="time">
							<option>VND</option>
						</select>
					</div>

					<!--  -->
					<a href="#" class="header-wrapicon1 dis-block m-l-30">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide1"></span>

					<div class="header-wrapicon2 m-r-13">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="cart-quantity header-icons-noti" id="cartquantity">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="cart-noti header-cart-wrapitem">
							</ul>

							<div class="cart-total header-cart-total">
								Tổng tiền: 0 đ
							</div>

							<div class="header-cart-buttons">
									<!-- Button -->
									<a href="${pageContext.servletContext.contextPath}/cart" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Xem giỏ hàng
									</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="wrap_header">

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li>
								<a href="${pageContext.servletContext.contextPath}/home">Trang chủ</a>
							</li>
		
							<li>
								<a href="${pageContext.servletContext.contextPath}/shop">Sản phẩm</a>
							</li>
		
							<li>
								<a href="${pageContext.servletContext.contextPath}/blog">Tin tức</a>
							</li>
		
							<li>
								<a href="${pageContext.servletContext.contextPath}/about">Giới thiệu</a>
							</li>
		
							<li>
								<a href="${pageContext.servletContext.contextPath}/contact">Liên hệ</a>
							</li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons">

				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="${pageContext.servletContext.contextPath}/home" class="logo-mobile">
				<img src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="#" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								

								

								
							</ul>

							<div class="header-cart-total">
								Tổng tiền: 0 đ
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="cart.html" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu" >
			<nav class="side-menu">
				<ul class="main-menu">
					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<span class="topbar-child1">
							Free shipping for standard order over $100
						</span>
					</li>

					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<div class="topbar-child2-mobile">
							<span class="topbar-email">
								fashe@example.com
							</span>

							<div class="topbar-language rs1-select2">
								<select class="selection-1" name="time">
									<option>USD</option>
									<option>EUR</option>
								</select>
							</div>
						</div>
					</li>

					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="#" class="topbar-social-item fa fa-facebook"></a>
							<a href="#" class="topbar-social-item fa fa-instagram"></a>
							<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
							<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
							<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
						</div>
					</li>

					<li class="item-menu-mobile">
						<a href="${pageContext.servletContext.contextPath}/home">Trang chủ</a>
					</li>

					<li class="item-menu-mobile">
						<a href="product.html">Sản phẩm</a>
					</li>

					<li class="item-menu-mobile">
						<a href="product.html">Sale</a>
					</li>

					<li class="item-menu-mobile">
						<a href="cart.html">Features</a>
					</li>

					<li class="item-menu-mobile">
						<a href="blog.html">Blog</a>
					</li>

					<li class="item-menu-mobile">
						<a href="about.html">Giới thiệu</a>
					</li>

					<li class="item-menu-mobile">
						<a href="contact.html">Liên hệ</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>

			<!-- Page content -->		
<jsp:invoke fragment="content" />								
										
			<!-- /page content -->


			<!-- Footer -->
	<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
		<div class="flex-w p-b-90">
			<div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">
					Liên hệ
				</h4>

				<div>
					<p class="s-text7 w-size27">
						Địa chỉ: 242 Cao Thắng - Hạ Long - Quảng Ninh<br>
						SĐT:098 583 18 81
					</p>
					
					<div class="flex-m p-t-30">
						<a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a>
						<a href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a>
						<a href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a>
						<a href="#" class="fs-18 color1 p-r-20 fa fa-snapchat-ghost"></a>
						<a href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play"></a>
					</div>
				</div>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Danh mục
				</h4>

				<ul>
					<li class="p-b-9">
						<a href="#" class="s-text7">
							Men
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Women
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Dresses
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Sunglasses
						</a>
					</li>
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Liên kết
				</h4>

				<ul>
					<li class="p-b-9">
						<a href="#" class="s-text7">
							Search
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							About Us
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Contact Us
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Returns
						</a>
					</li>
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Trợ giúp
				</h4>

				<ul>
					<li class="p-b-9">
						<a href="#" class="s-text7">
							Track Order
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Returns
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							Shipping
						</a>
					</li>

					<li class="p-b-9">
						<a href="#" class="s-text7">
							FAQs
						</a>
					</li>
				</ul>
			</div>

			<div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">
					Newsletter
				</h4>

				<form>
					<div class="effect1 w-size9">
						<input class="s-text7 bg6 w-full p-b-5" type="text" name="email" placeholder="email@example.com">
						<span class="effect1-line"></span>
					</div>

					<div class="w-size2 p-t-20">
						<!-- Button -->
						<button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
							Subscribe
						</button>
					</div>

				</form>
			</div>
		</div>

		<div class="t-center p-l-15 p-r-15">
			<a href="#">
				<img class="h-size2" src="images/icons/paypal.png" alt="IMG-PAYPAL">
			</a>

			<a href="#">
				<img class="h-size2" src="images/icons/visa.png" alt="IMG-VISA">
			</a>

			<a href="#">
				<img class="h-size2" src="images/icons/mastercard.png" alt="IMG-MASTERCARD">
			</a>

			<a href="#">
				<img class="h-size2" src="images/icons/express.png" alt="IMG-EXPRESS">
			</a>

			<a href="#">
				<img class="h-size2" src="images/icons/discover.png" alt="IMG-DISCOVER">
			</a>

			<div class="t-center s-text8 p-t-20">
				Copyright © 2018 All rights reserved. | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
			</div>
		</div>
	</footer>
 <!-- /footer content -->
<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>


<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
	$(".selection-1").select2({
		minimumResultsForSearch: 20,
		dropdownParent: $('#dropDownSelect1')
	});

	$(".selection-2").select2({
		minimumResultsForSearch: 20,
		dropdownParent: $('#dropDownSelect2')
	});
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="resources/vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
			});
		});
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
			});
		});

		$('.btn-addcart-product-detail').each(function(){
			var nameProduct = $('.product-detail-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Đã được thêm vào giỏ hàng !", "success");
			});
		});
		
		
		<!-- ==================== Giỏ hàng =============================-->
		// Định nghĩa một mảng các phần tử sẽ bỏ vào giỏ hàng
	    var shoppingCartItems = [];

	    $(document).ready(function () {
	        // Kiểm tra nếu đã có sessionStorage["shopping-cart-items"] hay chưa?
	        if (sessionStorage["shopping-cart-items"] != null) {
	            shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString());
	        }

	        // Hiển thị thông tin từ giỏ hàng
	        displayShoppingCartItems();
	    });
	 
	   


	    // Sự kiện click các button có class=".add-to-cart"
	    $(".add-to-cart").click(function () {
	        var button = $(this); // Lấy đối tượng button mà người dùng click
	        var id = button.attr("id"); // id của sản phẩm là id của button
	        var img = button.attr("data-img");
	        var name = button.attr("data-name"); // name của sản phẩm là thuộc tính data-name của button
	        var price = button.attr("data-price"); // price của sản phẩm là thuộc tính data-price của button
	        var quantity = 1; // Số lượng

	        var item = {
	            id: id,
	            img: img,
	            name: name,
	            price: price,
	            quantity: quantity
	        };

	        var exists = false;
	        if (shoppingCartItems.length > 0) {
	            $.each(shoppingCartItems, function (index, value) {
	                // Nếu mặt hàng đã tồn tại trong giỏ hàng thì chỉ cần tăng số lượng mặt hàng đó trong giỏ hàng.
	                if (value.id == item.id) {
	                    value.quantity++;
	                    exists = true;
	                    return false;
	                }
	            });
	        }

	        // Nếu mặt hàng chưa tồn tại trong giỏ hàng thì bổ sung vào mảng
	        if (!exists) {
	            shoppingCartItems.push(item);
	        }

	        // Lưu thông tin vào sessionStorage
	        sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems); // Chuyển thông tin mảng shoppingCartItems sang JSON trước khi lưu vào sessionStorage
	        // Gọi hàm hiển thị giỏ hàng
	        displayShoppingCartItems();
	    });
	    

	    // Hiển thị giỏ hàng ra table
	    function displayShoppingCartItems() {
	        if (sessionStorage["shopping-cart-items"] != null) {
	            shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString()); // Chuyển thông tin từ JSON trong sessionStorage sang mảng shoppingCartItems.
	            $(".cart-noti").html("");
	            // Duyệt qua mảng shoppingCartItems để append từng item dòng vào table 
	            var total = 0;
	            var quantity = 0;
	            $.each(shoppingCartItems, function (index, item) {
	                var htmlString = "";           
	                htmlString += "<li class='header-cart-item'>";
	                htmlString += "<div class='header-cart-item-img'>";
	                htmlString += "<img src='images/products/"+item.img+"' alt='IMG'>"
	                htmlString += "</div>"
	                htmlString += "<div class='header-cart-item-txt'>"
	                htmlString += "<a href='#' class='header-cart-item-name'>"
	                htmlString +=	item.name
	                htmlString += "</a>"
	                htmlString += "<span class='header-cart-item-info'>"
	                htmlString +=  item.quantity+" x "+(item.price*1).toLocaleString('vi-VN')+ " đ"
	                htmlString += "</span>"
	                htmlString +="</div>"
	                htmlString +="</li>"	              
	                $(".cart-noti").append(htmlString);
	                total += item.quantity*item.price;
	                quantity++;
	            });
	            $(".cart-total").html("Tổng tiền: "+total.toLocaleString('vi-VN')+" đ");
	            $(".cart-quantity").html(quantity);
	        }
	    }
	</script>

<!--===============================================================================================-->
	
	<script src="resources/js/main.js"></script>
	<!-- footer -->
	<jsp:invoke fragment="footer" />

</body>
</html>
