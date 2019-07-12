<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<title>Display Train</title>
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
background-color: #D8FF30;
color:#050067;
border-bottom: 2px solid #D8FF30;
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
 color:#FDFF30;
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

<div id="nandu" style="width:660px; height:auto">
<div class="registeruser">
<%-- <h3>
<%
if(session.getAttribute("delTktMsg") != null){
out.print(session.getAttribute("delTktMsg"));
session.invalidate();
}
%>

</h3> --%>

<h3>
<%
if(session.getAttribute("adminTktUpdate") != null){
out.print(session.getAttribute("adminTktUpdate"));
session.invalidate();
}else if(session.getAttribute("delTktMsg") != null)
{
	out.print(session.getAttribute("delTktMsg"));
	session.invalidate();
	}
%>
</h3> 


<table>
<tr>
<th>Train Name</th>
<th>Passenger Name</th>
<th>Gender</th>
<th>Mobile No</th>
<th>Age</th>
<th>Address</th>
<th>Update</th>
<th>Delete</th>
</tr>




<c:forEach var="displayTrain" items="${displayTicketAdmin }">

<!--Construct to  Ticket Update by Admin  -->
<c:url var="updateLink" value="/updateTicket">
<c:param name="bookTrainId" value="${displayTrain.id }"/>
</c:url>

<!--Construct to  Ticket Delete by Admin -->
<c:url var="deleteLink" value="/deleteTicket">
<c:param name="trainIdbook" value="${displayTrain.id }"/>
</c:url>

<tr>
<td>${displayTrain.trainName }</td>
<td>${displayTrain.psgName }</td>
<td>${displayTrain.gender }</td>
<td>${displayTrain.phone }</td>
<td>${displayTrain.age }</td>
<td>${displayTrain.address }</td>
<td><a href="${updateLink }">Update</a> </td>
<td><a href="${deleteLink }" 
onclick ="if(!(confirm('Are you sure, you want to delete this customer'))) return false">Delete</a> </td>

</tr>

</c:forEach>

</table>

</div>

</div>
<%@ include file="../masterpage/footer.jsp" %>
</div>
</body>
</html>