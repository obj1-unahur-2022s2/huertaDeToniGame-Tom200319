import wollok.game.*

object toni {
	const property image = "toni.png"
	var property position = game.at(3, 3)
	const plantasCosechadas = [ ] 
	
	method position() = position
	
	method recordarPlanta(planta){
		plantasCosechadas.add(planta)
	}
	
	method regarTodasLasPlantas(){
		plantasCosechadas.forEach({p => p.regar()})
	}
	
	method sembrar(unaPlanta){
		game.addVisual(unaPlanta)
		self.recordarPlanta(unaPlanta)
	}
	// Pegar acá todo lo que tenían de Toni en la etapa 1
}