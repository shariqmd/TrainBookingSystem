<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<title>Cancel Ticket</title>
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

<div>
<h3>
<%
if (session.getAttribute("msgclc") != null ){
	out.println(session.getAttribute("msgclc"));
session.invalidate();
}
%>
</h3>
</div>

<table>

<tr>
<th>Train Name</th>
<th>Passenger Name</th>
<th>Gender</th>
<th>Mobile No</th>
<th>Age</th>
<th>Address</th>
<th>Action</th>
</tr>

<c:forEach var="tktInfo" items="${bookTktPage}">
<%--For Ticket Cancilation --%>

<c:url var="cancelLink" value="/cancelTkt">
<c:param name="ticketId" value="${tktInfo.id }"></c:param>
</c:url>

<tr>
<td>${tktInfo.trainName}</td>
<td>${tktInfo.psgName }</td>
<td>${tktInfo.gender }</td>
<td>${tktInfo.phone }</td>
<td>${tktInfo.age }</td>
<td>${tktInfo.address }</td>
<td>
<a href="${cancelLink }"
	onclick ="if(!(confirm('Are you sure, you want to Cancel Ticket'))) return false">Cancel</a>
</td>

</tr>


</c:forEach>



</table>


</div>


<%@ include file="../masterpage/footer.jsp" %>
</div>
</body>
</html>