var map;
  	
  	function initMap() {
		var myLatlng = new google.maps.LatLng(10,10);
		var options = {
			center: myLatlng,
   			zoom: 9,
		}
		map = new google.maps.Map(document.getElementById('mapa'),options);
	}	
	function addMarkerToMap(nombre, lat, lon, tipo){
    	var infowindow = new google.maps.InfoWindow();
    	var myLatLng = new google.maps.LatLng(lat, lon);
    	var marker = new google.maps.Marker({
    	    position: myLatLng,
    	    map: map,
    	    icon: '../assets/'+tipo+'_icon.png',
    	});
    }
    function test(puntosJSON){
    	initMap();
    	for (var i=0; i < puntosJSON.length; i++) {
    		var punto = puntosJSON[i];
			addMarkerToMap(punto.nombre,parseInt(punto.lat),parseInt(punto.lon),"parking");
		}
    }