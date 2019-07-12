<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<title>User Registration</title>
<style>
*{
margin:0px;
padding:0px;
}
.error{
	font-size:11px;
	color:red;
}
 body{

font-family:sans-serif;
}
.n{
    text-align: left;
    margin-left: 40px;
}
sub{
color:red;
}
input{
width:300px;
}
</style>
</head>
<body>
<div id="Container">
<%@ include file="../masterpage/regheader.jsp" %>

<div id="nand" style="width:660px; height:auto; margin:auto">

<h1>Registration Form</h1>

<div class="registeruser">

<form:form modelAttribute="newReg" onsubmit="return validation()" action="newuserregistration" id="registeruser" autocomplete="off" method="POST">

<div class="n">
<h2>Register Here</h2>
</div>
<br>

<br>

<form:hidden path="id"/>

<label  >First Name <sub>*</sub></label> <br>
<form:input path="firstName" type="text" id="fname" placeholder="Enter First Name" /><br/>
<span id="first" class="error"></span> 
<br/><br/>


<label >Last Name <sub>*</sub></label><br>
<form:input path="lastName" type="text" id="lname" placeholder="Enter Last Name" /><br/>
<span id="last" class="error"></span>
<br/><br/>

<label>Email Id <sub>*</sub></label><br>
<form:input path="email" type="text" id="emailid" placeholder="Enter Email" /><br/>
<span id="emails" class="error"></span>
<br/><br/>

<label >Password <sub>*</sub></label><br>
<form:input path="pwd" type="password" id="pwd" placeholder="***********"/><br/>
<span id="pwds" class="error"></span>
<br/><br/>

<label >Phone <sub>*</sub></label><br>
<form:input path="phone" type="text" id="phone" placeholder=" Enter Phone Number" /><br/>
<span id="phns" class="error"></span>
<br/><br/>

<label >Address <sub>*</sub></label><br>
<form:input path="address" type="text" id="addr" placeholder="Enter Address" /><br/>
<span id="addrs" class="error"></span>
<br/>
<br/>


<input type="submit" id="subuser" name="submit" value="Register Now">

</form:form>


</div>

</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>

<script>

function validation(){
 var fname = document.getElementById('fname').value;
 var lname = document.getElementById('lname').value;
 var emailid = document.getElementById('emailid').value;
 var pwd = document.getElementById('pwd').value;
 var phone = document.getElementById('phone').value;
 var addr = document.getElementById('addr').value;
 
 
 

 if( fname == ""){
	document.getElementById('first').innerHTML=" ** Enter First Name";
return false;
 }
 else if ((fname.length < 3) || (fname.length >20)) 
	 {
	 document.getElementById('first').innerHTML=" ** Name Between 3 and 20";
	 return false;
	 }
 else if(!isNaN(fname))
 {
	 document.getElementById('first').innerHTML=" ** Only String is Allowed";
	 return false; 
 }
 else{
	 document.getElementById('first').innerHTML=" ";
 }
 
if( lname == ""){
		document.getElementById('last').innerHTML=" ** Enter Last Name";
	return false;
	 }
else if ((lname.length <3) || (lname.length >10)) 
 {
 document.getElementById('last').innerHTML=" ** Name Between 3 and 10";
 return false;
 }
else if(!isNaN(lname))
{
 document.getElementById('last').innerHTML=" ** Only String is Allowed";
 return false; 
}
else{
	document.getElementById('last').innerHTML=" ";
}


 
 if( emailid == ""){
		document.getElementById('emails').innerHTML=" ** Enter Email";
	return false;
	 }
 else if( emailid.indexOf('@') <= 0){
		document.getElementById('emails').innerHTML=" ** Enter Valid Email";
	return false;
	 }
 else if( ((emailid.charAt(emailid.length-4) != ".") && ((emailid.length-3) != "."))){
		document.getElementById('emails').innerHTML=" ** Invalid  Email";
	return false;
	 }
 else{
	 document.getElementById('emails').innerHTML="";
 }
 
if( pwd == ""){
		document.getElementById('pwds').innerHTML=" ** Enter Password";
	return false;
	 }
else if ((pwd.length < 5) || (pwd.length >20)) 
 {
 document.getElementById('pwds').innerHTML=" ** Pasword Between 5 and 20 ";
 return false;
 }
else{
	document.getElementById('pwds').innerHTML=" ";
}

 
 
 if( phone == ""){
		document.getElementById('phns').innerHTML=" ** Enter Moblie Number";
	return false;
	 }
 else if(isNaN(phone)){
		document.getElementById('phns').innerHTML=" ** Number Only";
	return false;
	 } 
 else if(phone.length > 10){
	 document.getElementById('phns').innerHTML=" ** Number to large";
		return false;
 }
 else if(phone.length < 10){
	 document.getElementById('phns').innerHTML=" ** Number is small";
		return false;
 }
 else if((phone.charAt(0) !=9 ) && (phone.charAt(0) !=8) && (phone.charAt(0) !=7)){
	 document.getElementById('phns').innerHTML=" ** Not a Valid number";
		return false;
 }
 else{
	 document.getElementById('phns').innerHTML=""; 
 }

 
 
 
if( addr == ""){
		document.getElementById('addrs').innerHTML=" ** Enter Your Address";
	return false;
	 }
else if ((addr.length < 5) || (addr.length >20)) 
 {
 document.getElementById('addrs').innerHTML=" ** Address Must Between 5 and 20";
 return false;
 }
else{
	document.getElementById('addrs').innerHTML="";
}
 
}

</script>


</body>
</html>