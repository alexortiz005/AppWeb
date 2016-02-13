package bikeapp

class PuntoInteresController {
	

    def index() {
    	[usuarios:Usuario.list()]
    }
    
    def registro() {
    	Usuario test = Usuario.get(params.dueño)
    	PuntoInteres local = new PuntoInteres(x:params.x,y:params.y,nombre:params.nombre,descripcion:params.descripcion,calificacion:params.calificacion,usuario:test)
    	local.save(failOnError: true)
    }
}
