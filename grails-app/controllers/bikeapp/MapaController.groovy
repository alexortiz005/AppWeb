package bikeapp

import grails.converters.JSON

class MapaController {

	def puntoInteresService

    def index() { 

		[puntos : PuntoInteres.list()]

    }
    
    def registrar() {
    	puntoInteresService.agregarPunto(params)
    	render(view: 'index',model: [puntos : PuntoInteres.list()])
    }
}
