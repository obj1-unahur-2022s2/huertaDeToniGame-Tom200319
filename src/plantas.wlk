import wollok.game.*
import toni.*

class Maiz {
	var imagen = "maiz_bebe.png"
	const position = toni.position()
	method image() {
		// Modificar esto para que la imagen dependa del estado.
		return imagen
	}
	
	
	method cultivar(){
		imagen = "maiz_bebe.png"
	}
	
	method regar(){
		imagen = "maiz_adulto.png"
	}
	
	method position() = position
}

class Trigo{
	var imagen = "trigo_0.png"
	const position = toni.position()
	method cultivar() {imagen = "trigo_0.png"}
	
	method regar() {imagen = "trigo_1.png"}
	
	method cosechar() {imagen = "trigo_2.png"}
	
	method image() {
		return imagen
	}
	method position() = position
}


class Tomaco {
	var imagen = "tomaco_ok.png"
	const position = toni.position()
	method cultivar() {imagen = "tomaco_ok.png"}
	method regar() {imagen = "tomaco_podrido.png"}
	method image() = imagen
	method position() = position
}
// Agregar las demás plantas y completar el Maiz.