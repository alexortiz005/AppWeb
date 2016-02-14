package bikeapp

class MapaController {

	def puntoInteresService

    def index() { 
    	[puntos:PuntoInteres.list()]
    }
    
    def registrar() {
    	/*render(contentType: "application/json") {
    		PuntoInteres(
    				lat: "10",
    				lon: "10",
    				nombre: "Hola",
    				descripcion: "jaja",
    				calificacion: "N/A",
    				tipo: "parking",
    				usuario: "NULL"
    		)
		}*/
    	puntoInteresService.agregarPunto(params)
    	redirect(controller:"mapa", action:"index")
    }
}
