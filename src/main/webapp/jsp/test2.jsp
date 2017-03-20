
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.maphilight.js"></script>

  <script>$(function() {
        $('.map').maphilight({
            fillColor: 'ffb31a'



        });
     
    });</script> 
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
      margin: 0;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-0{
    background-color: #F8F8F8;
    color: #555555;
    font-size: 50;
  }
  .bg-1 { 
      background-color: #ffffff; /* Green */
      color: #555555;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-menu {
      padding-top: 10px;
      padding-bottom: 10px;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }

  </style>
</head>
<body>

<!-- Navbar -->

 
<!-- First Container -->

<!-- <div class="container-fluid bg-0 text-center">
   
          <h1 >Smart House</h1>
  <h3>One click to control your house</h3>
        
</div> -->
<div class="container-fluid bg-1 ">
   
    <div class="row">
    <div class="col-sm-6">
        
   
   


<img  src="FloorPlan_2BRFLAT_Tgivingl1_900.jpg" class="map" usemap="#features">

<map name="features">
		
  			 
     <area  href="smartHouse?searchAction=searchByCity&room=Patio" coords="120,488,387,678" shape="rect">
    <area  href="smartHouse?searchAction=searchByCity&room=SmallCloset" coords="388,487,458,602" shape="rect">
    <area  href="smartHouse?searchAction=searchByCity&room=BedRoom" coords="390,273,643,483" shape="rect">
    <area   href="smartHouse?searchAction=searchByCity&room=BathRoom" coords="428,21,593,127" shape="rect">
    <area   href="smartHouse?searchAction=searchByCity&room=BathRoom1" coords="598,21,759,126" shape="rect">
    <area href="smartHouse?searchAction=searchByCity&room=BigCloset" coords="762,20,875,124" shape="rect">
    <area  href="smartHouse?searchAction=searchByCity&room=Kitchen" coords="22,243,119,250,165,152,218,154,219,19,22,18" shape="poly">
    <area  href="smartHouse?searchAction=searchByCity&room=LivingRoom" coords="427,129,388,127,387,480,118,484,121,249,167,153,219,150,218,22,420,27" shape="poly">
    <area  href="smartHouse?searchAction=searchByCity&room=Hall" coords="388,132,597,269" shape="rect">
    <area  href="smartHouse?searchAction=searchByCity&room=BedRoom1" coords="603,132,597,264,641,271,643,403,874,401,877,131" shape="poly">

    
</map>
</div>
<div class="col-sm-6"></div>
<c:choose>
  <c:when test="${room.name != 'Null'}">
    <%
    response.setIntHeader("Refresh", 60); //in your case 60*5=300 (for 5 min)
    %>
    <h3><b>Information</b></h3>
    <p>Room Name: ${room.name}  </p>

    <p>Temp: ${room.temp}</p>
    <p>Window Open: ${room.windowOpen}</p>
    <p>Lights On: ${room.lightsOn}</p>
    
    
   
    
    <br>
    <br>
    <form action="/smartHouse" method="post">
    <b><h3>Controls</h3></b>

    <p>Temp: <input type="number" name="temp" min="5" max="40" value="${room.temp}"/></p>
    <p>Window Open:
    <input type="radio" ${requestScope['room'].windowOpen == true? 'checked':''} name="windows" value="True" /> Open
    <input type="radio" ${requestScope['room'].windowOpen == false? 'checked':''} name="windows" value="False" /> Closed
    </p>
    <p>Lights On: 
    <input type="radio" ${requestScope['room'].lightsOn == true? 'checked':''} name="light" value="True" /> On
    <input type="radio" ${requestScope['room'].lightsOn == false? 'checked':''} name="light" value="False" /> Off
    </p>
    
    
   
    <p>Submit button.
    <input type="submit" name="submit" value="submit" /></p>
</form>

    </c:when>
    </c:choose>


</div>


</div>

  



<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>Smart House by <a href="https://github.com/Przecich">Przemyslaw Cich</a></p> 
</footer>

</body>
</html>
