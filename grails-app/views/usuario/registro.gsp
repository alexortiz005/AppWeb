	<!DOCTYPE html>
	<asset:stylesheet href="bikeApp.css"/>
	<html>
	    <head>
	        <title>User page</title>
	    </head>
	    <body>
	    	<div class="header">
	    	</div>
	        <div>
	            <g:each var="users" in="${user}">
	            	<p>El usuario ${users.usuario} nacio en ${users.fecha}. Su email es ${users.email} y la contraseña es ${users.contraseña}</p>
	            	</br>
	            	</br>
	            	</br>
	            	</br>
	            	</br>
	            	</br>
	            </g:each>
	        </div>
	        <div>
	        	<g:form name="myForm" controller="usuario">
	        		<g:actionSubmit value="Otra vez!" action="index"/> 
	        	</g:form>
	        </div>
	    </body>
	</html>