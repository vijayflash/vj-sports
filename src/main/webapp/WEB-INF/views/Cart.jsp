<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY CART</title>

<style>
.cont {
	margin-top: 100px;
	color: black;
}
input{
color: black !important;
}
body{
	background: #7c4dff ;
	padding: 0px;
}
#albums{
background: threedlightshadow;
color: black;
font-size: x-large;
font-family: fantasy;
margin-top: 5px;
margin-bottom: 5px;
}
.Latest{
padding-top: 10px;
}
#footer{
margin-top: 250px;
}
</style>
</head>
<body>
	<div class="container cont">
		<div id="albums" class="col-sm-12">
			<p class="Latest">Cart</p>
	</div>
		<table class="table table-stripped table-xs">
			<form action="updateCartItem?${cartitem.itemId}"/>
			<tr>
				<th></th>
				<th>Product</th>
				<th class="text-right">Quantity</th>
				<th class="text-right">Price</th>
				<th class="text-right">SubTotal</th>
				<th class="text-center">Action</th>
			</tr>

			<c:forEach items="${cartitems}" var="cartitem">
				<tr style="margin-top: 5px; margin-right: 20px;!important"
					class="item-row">
					<td><a href="productdescription?productId=${cartitem.productId}"><img
							alt="${cartitem.productName}"
							src="resources/products/${cartitem.productId}.jpg" width="100px"
							height="100px"></a></td>
					<td style="text-align: left">${cartitem.productName}</td>
					<td style="text-align: right">
					<a href="decreaseQty?itemId=${cartitem.itemId}"><span class="glyphicon glyphicon-minus"> </span></a>
					<input type="text" name="quantity" value="${cartitem.qty}" min="1" id="quantity" style="width: 36px; text-align: center" />
					<a href="increaseQty?itemId=${cartitem.itemId}"><span class="glyphicon glyphicon-plus"> </span></a>
					</td>
					<td style="text-align: right;">&#36;${cartitem.price}</td>
					<td style="text-align: right;">&#36;${cartitem.price * cartitem.qty}</td>
					<td class="col-sm-1 col-md-1"><a
						href="removeCart?itemId=${cartitem.itemId} "
						class="btn btn-danger"> <span
							class="glyphicon glyphicon-remove"></span> Remove
					</a></td>
				</tr>
			</c:forEach>
			
			<tr>
				<td colspan="4" class="text-right" style="font-weight: bold;">Total</td>
				<td style="text-align: right;">&#36;${grandtotal}</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4" class="text-left"><a href="home"
					class="btn btn-info"> <span
						class="glyphicon glyphicon-shopping-cart"></span> Continue
						Shopping
				</a></td>
				<td colspan="2" class="text-right"><a href="proceed"
					class="btn btn-success"> checkout <span
						class="glyphicon glyphicon-play"></span>
				</a></td>
				
			</tr>
			
		</table>
		

	</div>
	</body>
</html>