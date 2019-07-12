<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<title>Update Train</title>
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
color:#FFCC00;
font-weight: bold;
align-items:left;

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
<%@ include file="../masterpage/adminheader.jsp" %>

<div id="nand" style="width:100%; height:auto; margin:auto">

<div class="registeruser">

<h3>
<%
if(session.getAttribute("addtmsg") != null){
out.print(session.getAttribute("addtmsg"));
session.invalidate();
}else if(session.getAttribute("trainDelMsg") != null){
	out.print(session.getAttribute("trainDelMsg"));
	session.invalidate();
	}
%>
</h3>

<table>
	<tr>
							<th>Train Name</th>
							<th>Total Seat</th>
							<th>Train Fare</th>
							<th>From Place</th>
							<th>To Place</th>
							<th>Duration</th>
							<th>Update</th>
							<th>Delete</th>
					</tr>
			
			<c:forEach var="theTrain" items="${showTrain}">
			
		<%-- 
		<c:url var="updateLink" value="/customer/showFormForUpdate">
<c:param name="customerId" value="${tempCustomer.id }"/>
</c:url> --%>
			
			<!--Construct An update link  -->
			<c:url var="updateLink" value="/trainUpdate">
			<c:param name="trainId" value="${theTrain.tid }"></c:param>
			</c:url>
			
			<!--  Construct for delete record -->
			<c:url var="deleteLink" value="/trainDelete">
			<c:param name="trainId" value="${theTrain.tid }"></c:param>
	</c:url>
				
					<tr>
						<td>${theTrain.trainName}</td>
						<td>${theTrain.totalSheet}</td>
						<td>${theTrain.trainFare}</td>
						<td>${theTrain.fromPlace }</td>
						<td>${theTrain.toPlace }</td>
						<td>${theTrain.duration }</td>
						
						
						<td>
						<a href="${updateLink}">Update</a>
						</td><td>
						<a href="${deleteLink }"
						onclick ="if(!(confirm('Are you sure, you want to delete this customer'))) return false">Delete</a>
						
						</td>
					</tr>
			
			</c:forEach>


</table>


</div>

</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>
</body>
</html>