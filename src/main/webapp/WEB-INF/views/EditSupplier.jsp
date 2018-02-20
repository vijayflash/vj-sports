<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Category</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
body {
	 background-color: #7c4dff;
}
label{
	color: black;
}
</style>
</head>
<body>
<script>
function formCategory(){
	// Make quick references to our fields
	
	var productname = document.getElementById('productname');
	var productdescription = document.getElementById('productdescription');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(suppliername, "Category Name Should not be empty")) {
						if (isAlphabet(suppliername,
								"Please enter only letters for Category Name")) {
							if (notEmpty(supplierdescription,"Category Description Should not be empty")){
							         if (isAlphabet(supplierdescription,
							        "Please enter only letters for Category Description")) {
															return true;
														}
													}
												}
											}
								
	
	return false;
}
function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); 
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
</script>
<br> <br> <br>
<br> <br> <br>
<form class="form-horizontal" action="supplierEdited" method="post" onsubmit="return formCategory()" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="email">SupplierID:</label>
    <div class="col-sm-3">
      <input type="text" class= "form-control" name="supplierId" value="${supplier.supplierId}" readonly="true">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">supplier name :</label>
    <div class="col-sm-3"> 
      <input type="text" class= "form-control" name="supplierName" value="${supplier.supplierName}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">Contact number :</label>
    <div class="col-sm-3"> 
      <input type="text" class= "form-control" name="ContactNumber" value="${supplier.contactNumber}">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn btn-dark" id="subbutton" value ="submit">Submit</button>
    </div>
  </div>
</form>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
</body>
</html>