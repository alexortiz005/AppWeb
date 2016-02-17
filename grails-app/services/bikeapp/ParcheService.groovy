package bikeapp

import grails.transaction.Transactional

@Transactional
class ParcheService {

    def serviceMethod() {

    }
    
    def crearParche(params) {
    	println params
    	Usuario lider = Usuario.get(params.usuario)
    	println lider
    	def parche = new Parche(nombre:params.nombre,lider:lider.id,descripcion:params.descripcion,lat:params.lat,lon:params.lon)
    	parche.save(failOnError: true)
    	println parche.lon
    	println parche.lat
    }
}
