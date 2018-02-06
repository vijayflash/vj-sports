<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="/WEB-INF/views/header.jsp" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Album</title>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
			
		
  
  
  
  <c:choose>
     <c:when test="${not empty AddProductButtonClicked}">    
     
      <%@include file="/WEB-INF/views/Newproduct.jsp" %>
     </c:when>
     
     <c:when test="${not empty ViewProductButtonClicked}">
       <%@include file="/WEB-INF/views/ViewProduct.jsp" %>
   
     </c:when>
     
     <c:when test="${not empty editProductClicked}">
       <%@include file="/WEB-INF/views/EditProduct.jsp" %>
   
     </c:when>
     
     </c:choose> 
     	<br><br><br>
</body>

	
</html>