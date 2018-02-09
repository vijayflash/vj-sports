<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>VJ SPORTS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
	src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" >
</script>
<script>
	$('#theme li').click(function() {
		//alert('item: ' + $(this).text());
		switch_style($(this).text());
	});
</script>
<style>
#name {
	color: #05f20c;
	font-family: sans-serif;
	weight: bold;
}
.navbar-custom{
    background: #6200ea;
  
body{
    margin: auto;
}


</style>

<body>
	<nav class="navbar navbar-custom">
		<header id="name">
			India's largest online shopping for sports<span
				style="padding-left: 900px">Bring back to action</span>
		</header>
		<ul class="nav navbar-nav">
		<c:url value="/home" var="home"></c:url>
			<li><a href="home" id="name">HOME</a></li>
			<li><a href="#" id="name">ABOUT US</a></li>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
							<li><a href="displaysupplier" id="name">Supplier</a></li>
							<li><a href="products" id="name">PRODUCTS</a></li>
							</c:if>
							<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="displaysupplier" id="name">SUPPLIER</a></li>
							<li><a href="products" id="name">PRODUCTS</a></li>
							</security:authorize>
			<li><security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="dropdown"><a href="category"
						class="dropdown-toggle" data-toggle="dropdown" id="name">CATEGORY<span
							class="caret"></span></a>
						<ul class="dropdown-menu" id="dropdown">
							<li><a href="ViewCategory" id="name">View</a></li>
							<li><a href="Category" id="name">Add</a></li>
						</ul></li>



					<li class="dropdown"><a href="Supplier"
						class="dropdown-toggle" data-toggle="dropdown" id="name">SUPPLIER<span
							class="caret"></span></a>
						<ul class="dropdown-menu" id="dropdown">
							<li><a href="ViewSupplier" id="name">View</a></li>
							<li><a href="Supplier" id="name">Add</a></li>
						</ul></li>

					<li class="dropdown"><a href="Product" class="dropdown-toggle"
						data-toggle="dropdown" id="name">PRODUCT<span class="caret"></span></a>
						<ul class="dropdown-menu" id="dropdown">
							<li><a href="ViewProduct" id="name">View</a></li>
							<li><a href="Product" id="name">Add</a></li>
						</ul></li>
				</security:authorize>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<c:url value="/login" var="login"></c:url>
				<li><a href="${login}" id="name">LOGIN<span
						class="glyphicon glyphicon-log-in"></span></a>
						</li>
						
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name!=null }">
									<li id="right">
									<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="#" id="name">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
					<li><a href="myCart" id="name"><span
									class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
									<li><a href="History" id="name"><span
									class="glyphicon glyphicon-list" ></span> Orders</a></li>
					</security:authorize></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="admincart" id="name"><span
									class="glyphicon glyphicon-list-alt" ></span> Orders</a></li>
					</security:authorize>
								
									</c:if>
						
		<c:if test="${pageContext.request.userPrincipal.name==null }">				
			<c:url value="/signup" var="signup"></c:url>
		
		<li><a href="${signup}" id="name" style="padding-right: 40px"><span
				class="glyphicon glyphicon-user">SIGNUP</span></a></li>
				</c:if>
			
			
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
 								<li id=""><security:authorize
						access="hasRole('ROLE_USER')">
				
 				</security:authorize></li>
 											
 							<c:url value="/logout" var="logout"></c:url>
 							<li ><a href="${logout}" id="name"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
 								</c:if>


		


		
				</ul>
	</nav>
</body>
</html>