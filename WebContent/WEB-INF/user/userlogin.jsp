<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<title>User Login </title>
<style>
*{
margin:0px;
padding:0px;
}
.error{
	font-size:12px;
	color:red;
}
 body{

font-family:sans-serif;
}
h2{
padding: 0 0 10px;
}


</style>
</head>
<body>
<div id="Container">
<%@ include file="../masterpage/loginheader.jsp" %>

<div id="nandu" style="width:auto; height:900px; margin:auto">
<div class="loginBox" >

<img alt="image" src="${pageContext.request.contextPath}/resource/images/system2.png" class="user">

<h2>User Login</h2>
<p style="color: red">${msg}</p>
<br/>
<form:form action="userlogin" onsubmit="return Validation()" modelAttribute="userModel" method="POST">


<p>User Name</p>
<form:input path="email" type="text" id="name" placeholder="Enter Your Email" autocomplete="off"/><br>
<span id="names" class="error"></span>
<br/>
<br/>


<p>Password </p>
<form:input path="pwd" type="password" id="pass"  placeholder="********"/> <br>
  <span id="password" class="error"></span>

<br>
<br>
<input type="submit" name="submit" value="Sign In" />
<br/>
<br/>

<a href="#">Forget Password</a>

</form:form>

</div>
</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>
<script>
function Validation(){
var name= document.getElementById('name').value;
var pass= document.getElementById('pass').value;

if(name == null || name==""){
	document.getElementById('names').innerHTML=" ** Enter User Email Id";
	return false;
}else if( name.indexOf('@') <= 0){
		document.getElementById('names').innerHTML=" ** Enter Valid Email";
	return false;
	 }
 else if( ((name.charAt(name.length-4) != ".") && ((name.length-3) != "."))){
		document.getElementById('names').innerHTML=" ** Invalid  Email";
	return false;
	 }
 else{
	 document.getElementById('names').innerHTML="";
 }


if(pass==null || pass==""){
	document.getElementById('password').innerHTML=" ** Enter Your Password";
	return false;
}else{
	 document.getElementById('password').innerHTML="";
}
}
</script>


</body>
</html>