<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>




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
<title>User Home</title>
		
</head>
<body>
<div id="Container">

 <div>

<%@ include file="../masterpage/userheader.jsp" %>

</div>
<div>
<h2>
<%
if(session.getAttribute("userlogin") != null){
out.print(session.getAttribute("userlogin"));
session.invalidate();
}
%>
</h2>
</div>
  
<div>
<%@ include file="../masterpage/allheaderimg.jsp" %>
</div>
 
		
		<div id="footer1_"> &nbsp;</div>
			  <div id="footer2_">
			    <p>&nbsp;</p>
			    <p>Designed by <a href="http://www.ingroinfo.com/">IngroInfo Software Solution</a><br />
			      This Website is under the <a target="_blank" href="http://www.ingroinfo.com">Creative Commons Attribution</a> License.<br />
			      <br />
			      <span>Indian Railways is headed by a seven-member Railway Board whose chairman reports to the Ministry of Railways. Railway Board also acts as the Ministry of Railways. </span></p>
			    <p>&nbsp;</p>
			    
			    <div class="forlogo">
			    <p><a target="_blank" href="http://www.ingroinfo.com"> <img src="${pageContext.request.contextPath}/resource/images/logo1.png" alt="IngroInfo Logo" height="60" width="150" border="0" style="background-color:white" /></a></p>
			    </div>
   			 <p>&nbsp;</p>
   			
  </div>
  <div id="footer3_"> &nbsp;</div>

	
</div>
</body>
</html>
