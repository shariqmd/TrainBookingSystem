<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<title>Book Train</title>
</head>
<style>
*{
margin:0px;
padding:0px;
}
.error{
	font-size:11px;
	color:red;
}
input{
width:318px;
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
</style>

<body>
<div id="Container">
<%@ include file="../masterpage/adminheader.jsp" %>

<div id="nand" style="width:660px; height:auto; margin:auto">

<h1>Update Detail</h1>

<div class="registeruser">

<form:form modelAttribute="adminUpdateTkt" action="admintktupdate" onsubmit="return validationFun()" id="registeruser" method="POST" autocomplete="off">

<div class="n">
<h2>Fill Information</h2>
</div>
<br>
<form:hidden path="id"/>

<label  >Train Name <sub>*</sub></label> <br>

<form:input path="trainName" type="text" value="${tname}" id="uservalue" placeholder="Enter Train Name" />
<br/><br/><br/>


<label >Passenger Name <sub>*</sub></label><br>
<form:input path="psgName" type="text" id="name" placeholder="Enter Passenger Name" /><br/>
<span id="pname" class="error"></span> 
<br/><br/>

<label>Gender <sub>*</sub></label><br>
<form:input path="gender" type="text" id="gen" placeholder="Enter Gender " /><br/>
<span id="gens" class="error"></span> 
<br/><br/>

<label >Mobile Number <sub>*</sub></label><br>
<form:input path="phone" type="text" id="phone" placeholder="Mobile Number"/><br/>
<span id="phns" class="error"></span> 
<br/><br/>

<label >Age <sub>*</sub></label><br>
<form:input path="age" type="text" id="agee" placeholder="Enter Passenger Age" /><br/>
<span id="ages" class="error"></span> 
<br/><br/>

<label >Address <sub>*</sub></label><br>
<form:input path="address" type="text" id="addr" placeholder="Enter Address" /><br/>
<span id="addrs" class="error"></span> 
<br/><br/>

<input type="submit" id="subuser" name="submit" value="Update Now">

</form:form>


</div>

</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>

<script type="text/javascript">

function validationFun(){
	
	
	var name = document.getElementById('name').value;
	if(name==null||name==""){
		document.getElementById('pname').innerHTML=" ** Please Enter Name";
		return false;
	}else if(!isNaN(name)){
		document.getElementById('pname').innerHTML=" ** Enter String Only";
		return false;
	}else{
		document.getElementById('pname').innerHTML="";
	}
	
	
	var gen = document.getElementById('gen').value;
	if(gen==null||gen==""){
		document.getElementById('gens').innerHTML=" ** Please Enter Gender";
		return false;
	}else if(!isNaN(gen)){
		document.getElementById('gens').innerHTML=" ** Enter String Only";
		return false;
	}else{
		document.getElementById('gens').innerHTML="";
	}
	
	var phone = document.getElementById('phone').value;
	if(phone==null||phone==""){
		document.getElementById('phns').innerHTML=" ** Please Enter Phone";
		return false;
	} else if(isNaN(phone)){
		document.getElementById('phns').innerHTML=" ** Enter Number Only";
		return false;
		 } 
	 else if(phone.length > 10){
		 document.getElementById('phns').innerHTML=" ** Enter Number is large";
			return false;
	 }
	 else if(phone.length < 10){
		 document.getElementById('phns').innerHTML=" ** Enter Number is small";
			return false;
	 }
	 else if((phone.charAt(0) !=9 ) && (phone.charAt(0) !=8) && (phone.charAt(0) !=7)){
		 document.getElementById('phns').innerHTML=" ** Not a Valid Mobile Number";
			return false;
	 }
	 else{
		 document.getElementById('phns').innerHTML=""; 
	 }
	
	var agee = document.getElementById('agee').value;
	if(agee==null||agee==""){
		document.getElementById('ages').innerHTML=" ** Please Enter Age";
		return false;
	}else if(isNaN(agee)){
		document.getElementById('ages').innerHTML=" ** Enter Digit Only";
		return false;
	}else{
		document.getElementById('ages').innerHTML="";
	}
	
	
	 var addr = document.getElementById('addr').value;
		if(addr==null||addr==""){
			document.getElementById('addrs').innerHTML=" ** Please Enter Address";
			return false;
		}else{
			document.getElementById('addrs').innerHTML="";
		}
		
}

/* function checkNumber(){
	
	var num =document.getElementById('name').value;
	if(isNaN(num)){
		 document.getElementById('pname').innerHTML=""; 
	}else{
		document.getElementById('pname').innerHTML="String Only";
	}
} */

</script>



</body>
</html>