var map;
var points = []
var index = 0

function initMap() {
   var mapDiv = document.getElementById('map');
   map = new google.maps.Map(mapDiv, {
      center: {lat: 4.6363, lng: -74.0808},
      zoom: 15
   });
   map.addListener('click',function(e){
      //alert(e.latLng)
      addMarker(e.latLng)
      addToArray(e.latLng)
      printArray()
   });
}

function addMarker(location){
   var marker = new google.maps.Marker({
      position: location,
      map: map
   });
}

function addToArray(newItem){
   points[index] = newItem
   index = index+1
}

function printArray(){
   //for(i=0;i<points.length;i++){
      //alert(points[i])
   //points.toString()
   var toPrint = ""
   for( i=0 ; i<points.length ; i++ ){
      toPrint += points[i]+"<br>"
   }
   document.getElementById("table").innerHTML = toPrint
}

