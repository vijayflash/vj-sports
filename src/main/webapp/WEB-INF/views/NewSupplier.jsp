<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Supplier</title>
<style type="text/css">
body {
	background-color: none;
}
label{
	color: black;
}
</style>
</head>
<body>
<script>
function formArtist(){
	
	
	var suppliername = document.getElementById('suppliername');
	var contactnumber = document.getElementById('contactnumber');
	
	
				if (notEmpty(suppliername, "Artist Name Should not be empty")) {
						if (isAlphabet(suppliername,
								"Please enter only letters for Artist Name")) {
							if (notEmpty(contactnumber,"Contact Number Should not be empty")){
							         if (isNumeric(contactnumber,
							        "Please enter only letters for Contact Number")) {
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
		elem.focus(); // set the focus to this input
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
function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
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
<form action="addSupplier" class="form-horizontal" method="post" onsubmit="return formArtist()">
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="email">Supplier name:</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="SupplierName" id="suppliername" placeholder="Enter Supplier Name" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">Contact Number:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="ContactNumber" id="contactnumber" placeholder="Enter Contact Number" required>
    </div>
  </div>
 
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn btn-dark" id="subbutton">Submit</button>
    </div>
  </div>
</form>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
</body>
</html>