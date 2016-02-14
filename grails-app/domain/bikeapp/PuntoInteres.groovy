package bikeapp
import groovy.transform.ToString

@ToString
class PuntoInteres {

	static belongsTo = [ usuario : Usuario ]
	
	String lat
	String lon
	String nombre
	String descripcion
	String calificacion
	String tipo

    static constraints = {
    	usuario nullable: true
    }
}
