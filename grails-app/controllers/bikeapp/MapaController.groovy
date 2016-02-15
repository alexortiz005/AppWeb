package bikeapp

import grails.converters.JSON

class MapaController {

	def puntoInteresService

    def index() { 
    	def listaPuntos = []
    	for (def punto : PuntoInteres.list()) {
   			listaPuntos.push(punto as JSON)
		}
		[puntos : listaPuntos]

    }
    
    def registrar() {
    	puntoInteresService.agregarPunto(params)
    	render(view: 'index')
    }
}
