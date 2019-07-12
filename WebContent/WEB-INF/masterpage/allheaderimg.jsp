
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style1.css"/>

<style>
h2{
padding-top:10px;
color:#ffcc00;
    padding: 0px;
}
#master{
width:100%;
	
padding-top: 20px;
padding-left: 50px;
}

/* width:27%;
	height:200px;
	float:left;

 */

.card11 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width:28%;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
}

.card2 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
 width:28%;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
  padding-left: 10px;
}

.card3 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
 width:28%;
  margin: auto;
  text-align: center;
  font-family: arial;
  float:left;
  padding-left: 10px;
}
.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}
p{
text-align: justify;
margin-left:7px;
margin-right:7px;
}


button:hover, a:hover {
  opacity: 0.7;
}
</style>
</head>
<body>


<div id="master">

<div class="card11">
  <img src="${pageContext.request.contextPath}/resource//images/4.jpg" alt="John" style="width:100%" height="200px">
  <h2><u>DURONTO</u></h2>
 <p style="padding:10px">Long-distance trains with limited stops, these trains connect major state capitals and metropolitan cities of the country.

Other than these, there are also super fast trains, express trains, Jan Shatabdi, Mail, Rajya Rani and Jansadharan ...</p>
 
  <p><button>More Info</button></p>
  </div>
  
  <div class="card2">
  <img src="${pageContext.request.contextPath}/resource//images/1.jpg" alt="John" style="width:100%" height="200px">
   <h2><u>RAJDHANI</u></h2>
 
  <p style="padding:10px"> Connecting some of the major cities of India with the capital city of New Delhi, this is the highest priority Indian Railways.
Just knowing the train schedule between two stations is not enough.you will get a list of all the trains that start from that ... </p>
 
  <p><button>More Info</button></p>
  </div>
  <div class="card3">
  <img src="${pageContext.request.contextPath}/resource//images/2.jpg" alt="John" style="width:100%" height="200px">
   <h2><u>INTERCITY</u></h2>
  

  <p style="padding:10px">These trains run between two major cities and complete a round trip within a day. It only has chair cars and second sitters.
  Train Name, Starting Point and Destination. This is surely a simpler way to find a all the trains that start from train than asking for ...</p>
  <!-- <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div> -->
  <p><button>More Info</button></p>
  
</div>
</div>
</body>
</html>
