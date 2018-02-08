<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.table>tbody>tr>td, .table>tfoot>tr>td{
    vertical-align: middle;
}
@media screen and (max-width: 600px) {
    table#cart tbody td .form-control{
		width:20%;
		display: inline !important;
	}
	.actions .btn{
		width:36%;
		margin:1.5em 0;
	}
	
	.actions .btn-info{
		float:left;
	}
	.actions .btn-danger{
		float:right;
	}
	
	table#cart thead { display: none; }
	table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
	table#cart tbody tr td:first-child { background: #333; color: #fff; }
	table#cart tbody td:before {
		content: attr(data-th); font-weight: bold;
		display: inline-block; width: 8rem;
	}
	
	
	
	table#cart tfoot td{display:block; }
	table#cart tfoot td .btn{display:block;}
	
}
</style>
<body>
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartitems}" var="cartitem">
				<tr style="margin-top: 5px; margin-right: 20px;!important"
					class="item-row">
					<td><a href="Productdescription?productId=${cartitem.productId}"><img
							alt="${cartitem.productName}"
							src="resources/products/${cartitem.productId}.jpg" width="100px";
							height="100px;"></a></td>
					<td style="text-align: left;">${cartitem.productName}</td>
					<td style="text-align: right;">
					<a href="decreaseQty?itemId=${cartitem.itemId}"><span class="glyphicon glyphicon-minus"> </span></a>
					<input type="text" name="quantity" value="${cartitem.qty}" min="1" id="quantity" style="width: 36px; text-align: center;" />
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
				<td colspan="4" class="text-left"><a href="main"
					class="btn btn-info"> <span
						class="glyphicon glyphicon-shopping-cart"></span>Continue
						Shopping
				</a></td>
				<td colspan="2" class="text-right"><a href="proceed"
					class="btn btn-success"> checkout <span
						class="glyphicon glyphicon-play"></span>
				</a></td>
			</tr>
			</form>
		</table>
					</tbody>
					</div>
</body>
</html>