<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>

<title>Train Detail</title>
<style>
*{
margin:0px;
padding:0px;
}
.error{
	
	color:red;
}
 body{

font-family:sans-serif;
}
.n{
    text-align: center;
    margin-left:150px;
}
.registeruser {
    background: rgba(0,0,0,0.1);
    width: 640px;
    margin: 0px 0px 0px 40px;
    color: #fff;
    font-size: 16px;
    padding: 20px;
}


table{
    height: auto;
    width: 640px;
    
}

th{
color:#000;
background-color: #FFCC00;
border-bottom: 2px solid;
width:150px;
height: 50px;
}

td{
width:150px;
height:35px;
color:#fff;
background-color:rgba(0,0,0,0.1);
margin:10px;
padding:auto;

text-align: center;
font-family:sans-serif;
}

a{
color: #FFCC00;
font-weight: bold;
}

a :hover{
color: #fff;
}
h3{
text-align:center;
color:#D8FF30;
}

</style>

</head>
<body>
<div id="Container">
<%@ include file="../masterpage/userheader.jsp" %>


<div class="registeruser">
<h3><% 

if(session.getAttribute("msg1")!=null){
	out.println(session.getAttribute("msg1"));
	session.invalidate();
}

%></h3>

 <table>
 
 <tr>
<!--   <th>ID</th> -->
 <th>Train Name</th>
 <th>Total Seat</th>
 <th>Train Fare</th>
 <th>From place</th>
 <th>To Place</th>
 <th>Duration</th>
  <th>Action</th>
  
 </tr>

<c:forEach var="trainDetail" items="${trainInformation}">

	<!--  Construct for booktrain  -->
		 <c:url var="bookLink" value="/booktrain">
			  <c:param name="trainId" value="${trainDetail.tid }"></c:param> 
	</c:url> 

<!-- For Book The Train  -->

<tr>
<%-- <td>${trainDetail.tid} </td> --%>
<td>${trainDetail.trainName }</td>
<td>${trainDetail.totalSheet }</td>
<td>${trainDetail.trainFare }</td>
<td>${trainDetail.fromPlace }</td>
<td>${trainDetail.toPlace }</td>
<td>${trainDetail.duration }</td>
<td>
<a href="${bookLink}">Book Now</a> 
</td>

</tr>



</c:forEach>
 
 
 
 </table>


</div>


<%@ include file="../masterpage/footer.jsp" %>
</div>
</body>
</html>