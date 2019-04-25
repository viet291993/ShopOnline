<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="s" uri="/struts-tags"%>

<t:templateClient>

<jsp:attribute name="content">            
   <!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/slide/slide-4.jpg);">
		<h2 class="l-text2 t-center">
			Shop
		</h2>
		<p class="m-text13 t-center">
			Cá cảnh Hạ Long
		</p>
	</section>
	
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Danh mục
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="${pageContext.servletContext.contextPath}/shop" class="s-text13 active1">
									Tất cả
								</a>
							</li>
							<s:iterator value="listCatalog" status="listStatus">
							<li class="p-t-4">
								<a href="${pageContext.servletContext.contextPath}/shop/<s:property value="id"/>" class="s-text13 active1">
									<s:property value="name"/>
								</a>
							</li>
							</s:iterator>
						</ul>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							

							
						</div>

						<span class="s-text8 p-t-5 p-b-5">
							Hiển thị 1–12 of 16 kết quả
						</span>
					</div>

					<!-- Product -->
					<div class="row">
					<s:iterator value="listProduct" status="listStatus">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="images/products/<s:property value='image'/>" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size2 trans-0-4">
											<!-- Button -->
											<button id="<s:property value='id'/>" data-img="<s:property value='image'/>" data-name="<s:property value='name'/>" data-price="<s:property value='price'/>"  class="add-to-cart flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Thêm vào giỏ hàng
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="${pageContext.servletContext.contextPath}/product-detail/<s:property value="id"/>" class="block2-name dis-block s-text3 p-b-5">
										<s:property value="name"/>
									</a>

									<span class="block2-price m-text6 p-r-5">
										<fmt:setLocale value="vi_VN"/>
										<fmt:formatNumber type="currency" ><s:property value="price"/></fmt:formatNumber>
									</span>
								</div>
							</div>
						</div>
						</s:iterator>
					</div>
					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div>
				</div>
			</div>
		</div>
	</section>
</jsp:attribute>
</t:templateClient>