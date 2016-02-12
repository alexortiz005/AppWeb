	<!DOCTYPE html>
	<html>
	    <head>
	        <title>User page</title>
	        <style>
	        	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bikeApp.css',absolute: 'true' )}">
	        </style>
	    </head>
	    <body>
	        <div class="test">
	            <g:each var="bici" in="${bike}">
	            	<p>La marca es: ${bici.marca}, El color es: ${bici.color}, El año de compra es: ${bici.año} y la Linea es: ${bici.linea}</p>
	            </g:each>
	        </div>
	        <div>
	        	<g:form name="myForm" controller="bicicleta">
	        		<g:actionSubmit value="Otra vez!" action="index"/> 
	        	</g:form>
	        </div>
	    </body>
	</html>