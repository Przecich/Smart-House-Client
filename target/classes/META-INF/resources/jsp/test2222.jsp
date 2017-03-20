<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <title>jQuery maphilight documentation</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.maphilight.js"></script>
     <script>$(function() {
        $('.map').maphilight({
            fillColor: 'ffb31a'



        });
      /*
        $('#starlink').click(function(e) {
            e.preventDefault();
            var data = $('#star').data('maphilight') || {};
            data.neverOn = !data.neverOn;
            $('#star').data('maphilight', data);
        });
        $('#star').click(function(e) {
            e.preventDefault();
            var data = $('#star').mouseout().data('maphilight') || {};
            data.alwaysOn = !data.alwaysOn;
            $('#star').data('maphilight', data).trigger('alwaysOn.maphilight');
        });*/
    });</script> 
    <style type="text/css">
    	area: hover {
    		
    		background-color:yellow;
   		}
    </style>
  
</head>
<body>
<h1>SmartHouse</h1>
<p>Control your castle with one click</p>
<p>
<!-- <img src="demo_features.png" width="300" height="301" class="map" usemap="#features">
<map name="features">
    <area id="arrow" shape="poly" style="display:none;" coords="211,3,121,67,112,53,95,103,146,108,136,92,229,25" href="#" alt="arrow">
    <area id="star" shape="poly" coords="78,83,70,100,52,104,64,115,61,133,78,124,94,133,91,116,104,102,87,101,79,88" href="#" alt="star" class="group" data-maphilight='{"strokeColor":"0000ff","strokeWidth":5,"fillColor":"ff0000","fillOpacity":0.6}'>
    <area id="square1" shape="poly" coords="248,126,222,150,202,122,233,105,239,118,249,125,250,128" href="#" alt="a square" data-maphilight='{"alwaysOn":true,"stroke":false}'>
    <area id="square2" shape="poly" coords="151,249,175,225,182,222,167,193,136,221,153,250" href="#" alt="another square" class="group" data-maphilight='{"groupBy":".group"}'>
    <area id="shadowed" shape="rect" coords="250,250,290,290" href="#" alt="Shadow for some" data-maphilight='{"fillColor":"00ff00","shadow":true,"shadowBackground":"ffffff","alwaysOn":true}'>
</map>  -->
<img src="FloorPlan_2BRFLAT_Tgivingl1_900.jpg" class="map" usemap="#features">

<map name="features">
		
  			 
     <area  href="employee?searchAction=searchByCity&room=Patio" coords="120,488,387,678" shape="rect">
    <area title="" href="employee?searchAction=searchByCity&room=Patio1" coords="388,487,458,602" shape="rect">
    <area  title="" href="employee?searchAction=searchByCity&room=BedRoom" coords="390,273,643,483" shape="rect">
    <area  title="" href="employee?searchAction=searchByCity&room=BathRoom" coords="428,21,593,127" shape="rect">
    <area  title="" href="employee?searchAction=searchByCity&room=BathRoom1" coords="598,21,759,126" shape="rect">
    <area target="" alt="" title="" href="employee?searchAction=searchByCity&room=Patio5" coords="762,20,875,124" shape="rect">
    <area target="" alt="" title="" href="employee?searchAction=searchByCity&room=Kitchen" coords="22,243,119,250,165,152,218,154,219,19,22,18" shape="poly">
    <area target="" alt="" title="" href="employee?searchAction=searchByCity&room=LivingRoom" coords="427,129,388,127,387,480,118,484,121,249,167,153,219,150,218,22,420,27" shape="poly">
    <area target="" alt="" title="" href="employee?searchAction=searchByCity&room=Hall" coords="388,132,597,269" shape="rect">
    <area target="" alt="" title="" href="employee?searchAction=searchByCity&room=BedRoom1" coords="603,132,597,264,641,271,643,403,874,401,877,131" shape="poly">

    
</map>
</p>

<c:choose>
	<c:when test="${room.name != 'Null'}">
		<p>Name: ${room.name}</p>
		<p>Temp: ${room.temp}</p>
		<p>Window Open: ${room.windowOpen}</p>
		<p>Lights On: ${room.lightsOn}</p>
		<p>Name: ${room.getClass().getFields()[1]}</p>
		

		</c:when>
		</c:choose>



</body>
</html>
