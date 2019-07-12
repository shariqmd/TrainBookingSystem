<!DOCTYPE html>
<html>
<head>





<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>
	<title>Admin Home</title>	
	<style>
	*{
	margin:0px;
	padding:0px;
	
	}
		p{
		color:#DDE6C8;
		font-family: Tahoma;
		font-size:13px;
		}
		
		
		b{
		color:#99CC00;
		font-family: Calisto MT;
		font-size:22px;
		}
		h2{
text-align:center;
color:#D8FF30;
}
</style>	
		
</head>
<body>
<div id="Container">
<div>
<%@ include file="../masterpage/adminheader.jsp" %>
</div>

<div>
<h2>
<%
if(session.getAttribute("admlogin") != null){
out.print(session.getAttribute("admlogin"));
session.invalidate();
}
%>
</h2>
</div>
 
<div>
<%@ include file="../masterpage/allheaderimg.jsp" %>
</div>



<div>
<%@ include file="../masterpage/footer.jsp" %>
</div>

 </div>
</body>
</html>
