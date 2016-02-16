<%@ defaultCodec="none" %> 
<%! import grails.converters.JSON %>

<!DOCTYPE html>
<html>
  <head>
  	<script src="https://maps.google.com/maps/api/js"></script>
  	<asset:javascript src="mapa.js"/>
    <title>Mapa</title>
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
  	<g:javascript>

	google.maps.event.addDomListener(window, 'load', function() { test(${puntos as JSON}) });
  	
	</g:javascript>
    <div id="mapa"></div>
    <g:each var="punto" in="${puntos}">
    	<script>  
        		//var data = ${raw(punto)};
        		//var objeto = JSON.parse(JSON.stringify(data));
        		//alert(objeto.nombre);
        		//addMarker(objeto.nombre,objeto.lat,objeto.lon,objeto.tipo);
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
  </body>
</html>
