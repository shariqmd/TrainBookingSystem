<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<title>Admin Login</title>
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
sub{
color:red;
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

<img alt="image" src="${pageContext.request.contextPath}/resource/images/user.png" class="user">
<h2>Admin Login </h2>
<p style="color:red">${message}</p>
 
<br>
<form:form action="loginadmin" onsubmit="return Validation()" modelAttribute="modelAttri" method="POST">


<p>
Admin User <sub>*</sub> </p>
<form:input path="uname" type="text" id="name" placeholder="Enter User Name" autocomplete="off"/><br>
<span id="names" class="error"></span>
<br/>
<br/>



<p>Password <sub>*</sub></p>
<form:input path="pwd" type="password"  id="pass" placeholder="********"/><br>
  <span id="password" class="error"></span>

<br>
<br>
<input type="submit" name="submit" value="Sign In" />
<br>
<br>
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


	if(name==null||name==""){
		document.getElementById('names').innerHTML=" ** Please Enter User Name";
		return false;
	}else if(!isNaN(name)){
		document.getElementById('names').innerHTML=" ** Enter String Only";
		return false;
	}else{
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