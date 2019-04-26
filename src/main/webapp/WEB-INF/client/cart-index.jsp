<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="s" uri="/struts-tags"%>

<t:templateClient>
<jsp:attribute name="head">
	<style type="text/css">
	.errorMessage > li {
		list-style-type: none;
	}
	
	.errorMessage {
		margin-left: 0px;
		padding-left: 5px;
		color: red;
		font-family: Montserrat-Regular;
    	font-size: 13px;
    	line-height: 1.8;
	}
	.cartinput {
		height: 40px;
	}
	
	textarea {
    	outline: none;
    	border: none !important;
	}
</style>
</jsp:attribute>


<jsp:attribute name="content">            
   <!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(images/slide/slide-4.jpg);">
		<h2 class="l-text2 t-center">
			<s:text name="client.cart"/>
		</h2>
		<p class="m-text13 t-center">
			Cá cảnh Hạ Long
		</p>
	</section>
	
	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
		<s:form action="cart" method="post" theme="simple">	
			<s:hidden id="cartnoti" name="noti"></s:hidden>
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">
					<table class="table-shopping-cart">
						<tr class="table-head">
							<th class="column-1"></th>
							<th class="column-2"><s:text name="client.product-name"/></th>
							<th class="column-3"><s:text name="client.product-price"/></th>
							<th class="column-4 p-l-90"><s:text name="client.product-qty"/></th>
							<th class="column-5"><s:text name="client.product-amount"/></th>
						</tr>
						
					<tbody id="listitem"></tbody>
					</table>
				</div>
			</div>

			<div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
				<div class="flex-w flex-m w-full-sm">
					<div class="size11 m-r-10">
						<span class="m-text22 w-size19 w-full-sm">
							<s:text name="client.product-total"/>:
						</span>
					</div>

					<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">				
						<span class="total m-text21 w-size20 w-full-sm">
						   
						</span>	
					</div>
				</div>

				<div class="size10 trans-0-4 m-t-10 m-b-10">
					<!-- Button -->
					<button type="button" id="button-clear" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						<s:text name="client.cart-removeall"/>
					</button>
				</div>
			</div>

			<!-- Total -->
			<div class="bo9 w-size18 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
				<h5 class="m-text20 p-b-24">
					<s:text name="client.information-bill"/>
				</h5>
				<s:fielderror fieldName="list" />

			
				<div class="flex-w flex-sb bo10 p-t-15 p-b-20">
						<div class="sizefull bo4  m-b-5 cartinput">
							<s:textfield maxlength="50" class="sizefull s-text7 p-l-15 p-r-15" type="text" name="name" placeholder="%{getText('client.customer-name')}"/>
						</div>
							<s:fielderror fieldName="name" />
						
						<div class="sizefull bo4 m-b-5 ">
							<s:textarea maxlength="255" class="sizefull s-text7 p-t-5 p-l-15 p-r-15" type="text" name="address" placeholder="%{getText('client.customer-address')}"/>
						</div>
							 <s:fielderror fieldName="address" />
							
						
						<div class="sizefull bo4 m-b-5 cartinput">
							<s:textfield class="sizefull s-text7  p-l-15 p-r-15" type="text" name="phone" placeholder="%{getText('client.customer-phone')}"/>
						</div>
							 <s:fielderror fieldName="phone" />
						
						<div class="sizefull bo4 m-b-5 cartinput">
							<s:textfield class="sizefull s-text7 p-l-15 p-r-15" type="text" name="email" placeholder="Email"/>
						</div>
							<s:fielderror fieldName="email" />
						
						<div class="sizefull bo4 m-b-5 ">
							<s:textarea maxlength="255" class="sizefull s-text7 p-t-5 p-l-15 p-r-15" name="message" placeholder="%{getText('client.customer-messenger')}"/>
						</div>
							<s:fielderror fieldName="message" />
					
				</div>

				<!--  -->
				<div class="flex-w flex-sb-m p-t-26 p-b-30">
					<span  class="m-text22 w-size19 w-full-sm">
						<s:text name="client.product-total"/>:
					</span>
						<s:hidden id="stotal" name="amount"/>
					<span class="total m-text21 w-size20 w-full-sm">
					</span>
				</div>

				<div class="size15 trans-0-4">
					<!-- Button -->
					<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						<s:text name="client.cart-confirm"/>
					</button>
				</div>
			</div>
		</s:form>
		</div>
	</section>
</jsp:attribute>
<jsp:attribute name="footer">
<script type="text/javascript">
<!-- ==================== Giỏ hàng =============================-->
// Thông báo xác nhận đặt hàng
var noti = $("#cartnoti").val(); 
cartnoti(noti);
function cartnoti(kq)
{
    if(kq==1){
    	deleteAll();
    	swal("Thành công", "Cảm ơn bạn đã đặt hàng !", "success");
    }else if(kq==2){
    	swal("Thất bại", "Có lỗi trong quá trình đặt hàng !", "error");
    }
}

function deleteAll() {
    shoppingCartItems = [];
    sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems);
    displayCartItems();
    displayShoppingCartItems();
}

//Cộng số lượng itesm
function plusquantity(id,calculation) {
	console.log("Hello");
    $.each(shoppingCartItems, function (index, value) {
        if (value.id == id) {
        	if(calculation=="1"){
        		value.quantity++;
        	}else{
        		if(value.quantity>1)
        		value.quantity--;
        	}
        	return false;
        }
    })
    // Lưu thông tin vào sessionStorage
    sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems); // Chuyển thông tin mảng shoppingCartItems sang JSON trước khi lưu vào sessionStorage
   	displayCartItems();
    displayShoppingCartItems();
};

//Xóa itesm giỏ hàng shoppingCartItems
function deleteitem(id) {
    $.each(shoppingCartItems, function (index, value) {
        if (value.id == id) {                 
        	shoppingCartItems.splice(index,1)
        	return false;
        }
    })
    // Lưu thông tin vào sessionStorage
    sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems); // Chuyển thông tin mảng shoppingCartItems sang JSON trước khi lưu vào sessionStorage
   	displayCartItems();
    displayShoppingCartItems();
};

//Xóa hết giỏ hàng shoppingCartItems
$("#button-clear").click(function () {
    shoppingCartItems = [];
    sessionStorage["shopping-cart-items"] = JSON.stringify(shoppingCartItems);
    displayCartItems();
    displayShoppingCartItems();
});

$(document).ready(function () {
    // Kiểm tra nếu đã có sessionStorage["shopping-cart-items"] hay chưa?
    if (sessionStorage["shopping-cart-items"] != null) {
        shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString());
    }

    // Hiển thị thông tin từ giỏ hàng
    displayCartItems();
});

// Hiển thị giỏ hàng ra table
function displayCartItems() {
    if (sessionStorage["shopping-cart-items"] != null) {
        shoppingCartItems = JSON.parse(sessionStorage["shopping-cart-items"].toString()); // Chuyển thông tin từ JSON trong sessionStorage sang mảng shoppingCartItems.
        $("#listitem").html("");
        // Duyệt qua mảng shoppingCartItems để append từng item dòng vào table 
        var total = 0;
        $.each(shoppingCartItems, function (index, item) {
            var htmlString = "";      
            htmlString += "<tr class='table-row'>";
           	htmlString += "<td class='column-1'>" ;
        	htmlString += "<input type='hidden' name='listitem["+index+"].product.id' value='"+item.id+"' />"
        	htmlString += "<input type='hidden' name='listitem["+index+"].qty' value='"+item.quantity+"' />"
        	htmlString += "<input type='hidden' name='listitem["+index+"].amount' value='"+(item.price*item.quantity)+"' />"
           	htmlString += "<button type='button' onclick='deleteitem("+item.id+")'  class='cart-img-product b-rad-4 o-f-hidden'>"; 
           	htmlString += "<img src='images/products/"+item.img+"' alt='IMG-PRODUCT'>";
           	htmlString += "</button>"; 
           	htmlString += "</td>"; 
           	htmlString += "<td class='column-2'><a href='${pageContext.servletContext.contextPath}/product-detail/"+item.id+"' class='header-cart-item-name'>"+item.name+"</td></a>"
           	htmlString += "<td class='column-3'>" +(item.price*1).toLocaleString('vi-VN')+ " đ</td>"; 
           	htmlString += "<td class='column-4 p-l-70'>"; 
           	htmlString += "<div id='' class='flex-w bo5 of-hidden w-size17'>"; 
           	htmlString += "<button type='button' onclick='plusquantity("+item.id+",0)' class='btn-num-product-down color1 flex-c-m size7 bg8 eff2'>"; 
           	htmlString += "<i class='fs-12 fa fa-minus' aria-hidden='true'></i>"; 
           	htmlString += "</button>"; 
           	htmlString += "<input class='size8 m-text18 t-center num-product' type='number' name='num-product"+(index+1)+"' value='"+item.quantity+"'/>"; 
           	htmlString += "<button type='button' onclick='plusquantity("+item.id+",1)' class='btn-num-product-up color1 flex-c-m size7 bg8 eff2'>"; 
           	htmlString += "<i class='fs-12 fa fa-plus' aria-hidden='true'></i>"; 
           	htmlString += "</button>";
           	htmlString += "</div>"; 
           	htmlString += "</td>"; 
           	htmlString += "<td class='column-5'>"+(item.price*item.quantity).toLocaleString('vi-VN')+" đ</td>"; 
           	htmlString += "</tr>"; 
            $("#listitem").append(htmlString);
            total += item.quantity*item.price;
        });
        $(".total").html(total.toLocaleString('vi-VN')+" đ");
        $("#stotal").val(total);
    }
}
</script>

</jsp:attribute>
</t:templateClient>