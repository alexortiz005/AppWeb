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
    <div id="formulario">
    	<g:form name="myForm" controller="mapa">
    		<label>Tipo:</label><g:textField name="tipo"/></br>
    		<label>Long:</label><g:textField name="long"/></br>
    		<label>Lat:</label><g:textField name="lat"/></br>
    		<g:actionSubmit value="Registrar!" action="registrar"/>
    	</g:form>
    </div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAnF768E1k6-yMQfzd3b5zrAYEJtP2pr-s&callback=initMap"
    async defer></script>
  </body>
</html>
