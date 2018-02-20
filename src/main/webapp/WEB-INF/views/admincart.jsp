<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
body {
	background-color: #7c4dff;
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
margin-center: 20px;
}
#footer{
margin-top: 400px;
}
.cont {
	margin-top: 90px;
}
#tab{
color: black;
}
.responstable {
  margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background: transparent;
  color: black;
  border-radius: 10px;
  border: 1px solid black;
}
.responstable tr {
  border: 1px solid black;
}
.responstable tr:nth-child(odd) {
  background-color: transparent;
}
.responstable th {
  display: none;
  border: 1px solid black;
  background-color: white;
  color: black;
  padding: 1em;
}
.responstable th:first-child {
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .responstable th:nth-child(2) span {
    display: block;
    
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid black;
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid black;
  }
}
.responstable th, .responstable td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}
	</style>
</head>
<%@ include file="header.jsp"%>
<body>
<div class="container cont">
	<div class="row">
		<div id="albums" class="col-sm-12">
			<p class="Latest">Orders</p>
	</div>
	</div>
	</div>
	<table class="responstable" id="tab">
		<tr>
			<th align="center">S.No</th>
			<th>UserName</th>
			<th class="text-center">CartId</th>
			<th class="text-center">Product Name</th>
			<th class="text-center">Add Date</th>
			<th class="text-center">Qty</th>
			<th class="text-center">Price</th>
			<th class="text-center">Total</th>
			<th class="text-center">Delivery</th>
			<th class="text-center">Status</th>
		</tr>
		<c:forEach items="${cartitems}" var="cartitem" varStatus="status">
			<tr style="margin-top: 5px; margin-right: 20px;!important"
				class="item-row">
				<td>${status.count}</td>
				<td style="text-align: center;">${cartitem.uname}</td>
				<td style="text-align: center;">${cartitem.cartId}</td>
				<td style="text-align: center;">${cartitem.productName}</td>
				<td style="text-align: center;">${cartitem.cuDate}</td>
				<td style="text-align: center;">${cartitem.qty}</td>
				<td style="text-align: center;">&#36;${cartitem.price}</td>
				<td style="text-align: center;">&#36;${cartitem.total}</td>
				<td style="text-align: center;">${cartitem.dDate}</td>				
				<c:if test="${cartitem.days>=3}">
					<td style="text-align: center; color:#ff9000;">Shipped</td>
				</c:if>
				<c:if test="${cartitem.days<=0}">
					<td style="text-align: center; color:#06e20a;">Delivered</td>
				</c:if>
				<c:if test="${cartitem.days>=1 && cartitem.days<=2}">
					<td style="text-align: center; color:#3e0cf4;">In Transit</td>
				</c:if>
			</tr>
		</c:forEach>
		</table>
</body>

</html>
