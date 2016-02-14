var map;
function initMap() {
	var myLatlng = new google.maps.LatLng(10,10);
	var options = {
		center: myLatlng,
    	zoom: 9
	}

  	map = new google.maps.Map(document.getElementById('mapa'),options);
  	  	
  	//agregarMarcador("parking",new google.maps.LatLng(10,10),"Hello World!");
}




function agregarMarcador(tipo,lat,lon,nombre) {

	var posicion = new google.maps.LatLng(parseInt(lat),parseInt(lon));
	var marker = new google.maps.Marker({
    	position: posicion,
    	title: nombre,
    	icon: '../assets/'+tipo+'_icon.png'
  	});
  	marker.setMap(map);
}