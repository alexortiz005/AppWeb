var map;
function initMap() {
	var myLatlng = new google.maps.LatLng(-34.397,150.644);
	var options = {
		center: myLatlng,
    	zoom: 9
	}

  	map = new google.maps.Map(document.getElementById('mapa'),options);
  	  	
  	agregarMarcador("parking");
}




function agregarMarcador(tipo) {
	var myLatlng = new google.maps.LatLng(-34.397,150.644);
	var marker = new google.maps.Marker({
    	position: myLatlng,
    	title: 'Hello World!',
    	icon: '../bikeApp/assets/'+tipo+'_icon.png'
  	});
  	marker.setMap(map);
}