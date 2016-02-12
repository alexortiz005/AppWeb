<!DOCTYPE html>
	<html>
	    <head>
	        <title>Registro</title>
	        <style>
	        	<link rel="stylesheet" href="<g:resource dir="css" file="bikeApp.css" />" charset="utf-8"/>
	        </style>
	    </head>
	    <body>
	        <g:form name="form" controller="bicicleta">
	        	<div><label>Marca:</label><g:textField name="marca"/></div>
	        	<div><label>Linea:</label><g:textField name="linea"/></div>
	        	<div><label>Año:</label><g:textField name="año"/></div> 
	        	<div><label>Color:</label><g:textField name="color"/></div>
	            <div><g:actionSubmit value="Registrarse" action="registro"/></div>
	        </g:form>
	    </body>
	</html>