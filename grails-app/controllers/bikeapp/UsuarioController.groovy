package bikeapp

class UsuarioController {

    def index() {
    }
    
    def registro() {
    	def user = new Usuario(params)
    	user.save()
    	render (view:"registro", model: [user:Usuario.list()])
    }
}
