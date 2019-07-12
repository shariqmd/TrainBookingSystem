<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>
<title>Add Train</title>
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
    text-align: center;
    margin-left:150px;
}

sub{
color:red;
}
input{
width:325px;
}

</style>


</head>
<body>
<div id="Container">
<%@ include file="../masterpage/adminheader.jsp" %>

<div id="nand" style="width:660px; height:auto; margin:auto">

<h1>Add Train Detail</h1>

<div class="registeruser">


<div class="n">
<h2>Fill Now</h2>
</div>
<br>

<form:form action="addtrainsave"  onsubmit="return validationFun()" id="registeruser" name="myaddtrain" modelAttribute="addtrain" autocomplete="off" method="POST">

<form:hidden path="tid"/>

<label>Train Name <sub>*</sub></label><br>
<form:input path="trainName" type="text"  id="tname" placeholder="Enter Train Name" /><br>
<span id="trainN" class="error"></span>
<br></br>


<label>Total Seat <sub>*</sub></label><br>
<form:input path="totalSheet" type="text" id="tseat"  placeholder="Enter Seat"/><br>
<span id="trainS" class="error"></span>
<br></br>

<label>Train Fare <sub>*</sub></label><br>
<form:input path="trainFare" type="text" id="tfare"   placeholder="Enter Fare"/><br>
<span id="trainF" class="error"></span>
<br></br>

<label>Form Place <sub>*</sub></label><br>
<form:input path="fromPlace" type="text" id="tfplace" placeholder="Enter Source Place"/><br>
<span id="trainFP" class="error"></span>
<br></br>

<label>To Place <sub>*</sub></label><br>
<form:input path="toPlace" type="text" id="ttplace" placeholder="Enter Distination Place"/><br>
<span id="trainTP" class="error"></span>
<br></br>

<label>Duration(in Hours) <sub>*</sub></label><br>
<form:input path="duration" type="text" id="tduration" placeholder="Enter Travelling Time In Hours"/><br>
<span id="trainD" class="error"></span>
<br></br>

<br/>


<input type="submit" id="subuser" name="submit"  value="Add Now">



</form:form>


</div>


</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>


<script type="text/javascript">

function validationFun(){
	
	
	var name = document.getElementById('tname').value;
	if(name == null||name==""){
		document.getElementById('trainN').innerHTML=" ** Please Enter Name";
		return false;
	}else if(!isNaN(name)){
		document.getElementById('trainN').innerHTML=" ** Enter String Only";
		return false;
	} else if ((name.length < 3) || (name.length >20)) 
	 {
		 document.getElementById('trainN').innerHTML=" ** Train Name Between 3 and 20";
		 return false;
		 }
	else{
		document.getElementById('trainN').innerHTML="";
	}
	
	
	var tseat = document.getElementById('tseat').value;
	 if(tseat == null || tseat == ""){
			document.getElementById('trainS').innerHTML=" ** Enter Totol Seat";
		return false;
		 }
	else if(isNaN(tseat)){
			document.getElementById('trainS').innerHTML=" ** Number Only";
		return false;
		 }
	
	else{
		 document.getElementById('trainS').innerHTML=""; 
	}


	 var tfare = document.getElementById('tfare').value;
	 if(tfare==null|| tfare == ""){
			document.getElementById('trainF').innerHTML=" ** Enter Fare ";
		return false;
		 }
	 else if(isNaN(tfare)){
			document.getElementById('trainF').innerHTML=" ** Number Only";
		return false;
		 } 
	 
	 else{
		 document.getElementById('trainF').innerHTML=""; 
	 }

	 
	 
	 var tfplace = document.getElementById('tfplace').value;
	 if(tfplace==null|| tfplace == ""){
			document.getElementById('trainFP').innerHTML=" ** Enter Source Place";
		return false;
		 }
		 
		 else if(!isNaN(tfplace))
		 {
			 document.getElementById('trainFP').innerHTML=" ** Only String is Allowed";
			 return false; 
		 }
		 else{
			 document.getElementById('trainFP').innerHTML=" ";
		 }
		 
	 
	 
	 
	 var ttplace = document.getElementById('ttplace').value;
	 if( ttplace==null || ttplace == ""){
			document.getElementById('trainTP').innerHTML=" ** Enter Distination Place ";
		return false;
		 }
		 else if(!isNaN(ttplace))
		 {
			 document.getElementById('trainTP').innerHTML=" ** Only String is Allowed";
			 return false; 
		 }
		 else{
			 document.getElementById('trainTP').innerHTML=" ";
		 }
		 
	 
	 
	 var tduration = document.getElementById('tduration').value;
	 if(tduration==null || tduration == ""){
			document.getElementById('trainD').innerHTML=" ** Enter Travelling";
		return false;
		 }
	else if(isNaN(tduration)){
			document.getElementById('trainD').innerHTML=" ** Number Only";
		return false;
		 } 
	else{
		 document.getElementById('trainD').innerHTML=""; 
	}
}
</script>



</body>
</html>