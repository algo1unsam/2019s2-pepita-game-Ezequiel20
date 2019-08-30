import ciudades.*
import wollok.game.*
import comidas.*
import pepita.*

object roque {
	var property position =game.at(1,9)	
	var property comida=null
	method image(){
		return "jugador.png"
	}
	method move(nuevaPosicion){
		self.position(nuevaPosicion)
	}
	method encontreComida(_comida){
		comida=_comida
	}
	method teEncontre(ave){
	if(comida!=null){
	game.addVisual(comida)
	comida.position(game.at(10.randomUpTo(7).truncate(0),10.randomUpTo(2).truncate(0)))	
	comida=null
	}
	}
	method comidaGuardada(){
		return comida
	}
}
