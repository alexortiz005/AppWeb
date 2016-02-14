<!DOCTYPE html>
<asset:javascript src="mapa.js"/>
<html>
  <head>
    <title>Mapa</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #mapa {
        height: 500px;
        width: 500px;
      }
    </style>
  </head>
  <body>
    <div id="mapa"></div>
    <script type="text/javascript">
    	var map;
    	var marker;
		function initMap() {
			var myLatlng = new google.maps.LatLng(10,10);
			var options = {
				center: myLatlng,
    			zoom: 9
			}

  			map = new google.maps.Map(document.getElementById('mapa'),options);
  			//agregarMarcador("parking",new google.maps.LatLng(10,10),"Hello World!");
		}
    </script>
    <g:each var="punto" in="${puntos}">
    	<script type="text/javascript">
    		var posicion = new google.maps.LatLng(parseInt("${punto.lat}"),parseInt("${punto.lon}"));
			marker = new google.maps.Marker({
    			position: posicion,
    			title: "${punto.nombre}",
    			icon: '../assets/'+"${punto.tipo}"+'_icon.png'
  			});
  			marker.setMap(map);
    		alert("${punto.tipo}");
    	</script>

    </g:each>
    <div id="formulario">
    	<g:form name="myForm" controller="mapa">
    		<label>Tipo:</label><g:textField name="tipo"/></br>
    		<label>Long:</label><g:textField name="lon"/></br>
    		<label>Lat:</label><g:textField name="lat"/></br>
    		<label>Nombre:</label><g:textField name="nombre"/></br>
    		<label>Descripcion:</label><g:textField name="descripcion"/></br>
    		<g:actionSubmit action="registrar" value="Registrar!"/>
    	</g:form>
    </div>
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyAnF768E1k6-yMQfzd3b5zrAYEJtP2pr-s&callback=initMap"
    async defer></script>
  </body>
</html>
