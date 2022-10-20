import wollok.game.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	const plantas = [ ] 
	const plantasCosechadas = [ ] 
	var property monedas = 0
	
	method position() = position 
	
	method recordarPlanta(planta){
		plantas.add(planta)
	}
	
	method regarTodasLasPlantas(){
		plantas.forEach({p => p.regar()})
	}
	
	method cosecharPlanta(planta){
//		if(game.colliders(self).isEmpty()){
//			game.error("No hay nada")
//		}
//		if(planta.estasParaCosechar()){
//			plantasCosechadas.add
//		}
		if(planta.estasParaCosechar())
		plantasCosechadas.add(planta)
		else
		game.error("Todavia le falta")
	}
	
	method cosecharTodasLasPlantas(){
		plantas.forEach({p => p.cosechar()})
		plantas.clear()

	}
	
	method sembrar(unaPlanta){
		if(game.colliders(self).isEmpty()){
		game.addVisual(unaPlanta)
		self.recordarPlanta(unaPlanta)
		}
		else{
		game.error("Ya hay otra planta")
		}
	}
	
	method venderCosecha(){
		if(game.colliders(self))
		monedas += plantasCosechadas.size()
		plantasCosechadas.clear()
	}
	
	method informarEstado(){
		game.say(self, "Tengo " + monedas + " monedas " + " y " + plantasCosechadas.size() + " plantas para vender")
	}
	// Pegar acá todo lo que tenían de Toni en la etapa 1
}