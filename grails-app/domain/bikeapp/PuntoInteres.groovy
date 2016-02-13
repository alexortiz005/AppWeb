package bikeapp
import groovy.transform.ToString

@ToString
class PuntoInteres {

	static belongsTo = [ usuario : Usuario ]
	
	String x
	String y
	String nombre
	String descripcion
	String calificacion

    static constraints = {
    }
}
