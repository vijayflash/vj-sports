<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ include file="header.jsp"%>

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

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	body{
    margin: 0; 
    background: #7c4dff; 
}
.headertop{
 
    
    min-height: 10px;
    background: #ff0032;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
#name{
    color: #05f20c;    
      
        font-family: sans-serif;
        weight: bold;
      
}
.nav-custom{
    background: #f4511e;
    width: 1200px;
    
}
.btn-custom{
   padding-top: 0;
   padding-bottom: 0;
    background: #cccc00;
    display: block;
    
}
.navbar-custom{
    background: #6200ea;
    
.button-group{
   postion: absolute;
  width:50px; 
}
.dropdown-toggle{
    bacground: #ff0032;
}
#dropdown-custom{
    background: #ff0032;
    font-family: sans-serif;
}
#logindrodown{
    width: 600px;
    min-height: 400px;
    bacground: #ff6666;
    padding-left: 30px;
     padding-right: 30px;
}
.tales {
  width: 100%;
  height: 300px;
}
.carousel-inner{
  width:100%;
  max-height: 400px !important;
}
.container-fluid{
	background: #ff0032;
}
ul.dropdown-lr {
  width: 300px;
}
.navbar-min-height{
    min-height: 150px;
}

@media only screen and (max-width: 768px) {
    /* Not working */
    .navbar-min-height{
        min-height: 30px;
    }
}
	</style>

</head>
<body>
	<div class="container">
		<div id="mycarousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/newca.jpg",  class: "tales" >
				</div>
				<div class="item">
					<img src="resources/newca2.jpg",  class: "tales" >
				</div>
				<div class="item">
					<img src="resources/newca3.jpg",  class: "tales">
				</div>
				<div class="item">
					<img src="resources/newca4.jpg",  class: "tales">
				</div>
			</div>
			<a class="left carousel-control" href="#mycarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#mycarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<br><br><br>
	
<c:if test="${pageContext.request.userPrincipal.name==null }">
					<%@ include file="displayfeatured.jsp"%>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
					<%@ include file="displayfeatured.jsp"%>
					</security:authorize>
					</c:if>
					<br>	<br>	<br>	<br>	<br>	<br>

</body>

</html>