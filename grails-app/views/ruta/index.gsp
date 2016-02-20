<!DOCTYPE html>
<html lang="en">
  <head>

    <title>BikeApp - ¡Muevete por Bogotá!</title>

  </head>

  <body>
      <div id="datos">
	<g:form name="index" controller="ruta">
		<label>Nombre:</label><g:textField name="nombre"/>
		<g:actionSubmit action="registro" value="Registrar!"/>
	</g:form>
      </div>
         <script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
         <asset:javascript src="ruta.js"/>
         <div id="map"></div>
         <style>
            #map{
               width: 500px;
               height: 400px;
            }
         </style>
         <!--
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
         -->
         <div id="table"></div>
  </body>
</html>
