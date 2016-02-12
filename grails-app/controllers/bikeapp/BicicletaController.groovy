package bikeapp

class BicicletaController {

    def index() {
    }
    
    def registro() {
    	def bike = new Bicicleta(params)
    	bike.save()
    	render (view:"registro", model: [bike:Bicicleta.list()])
    }
    	
    
}
