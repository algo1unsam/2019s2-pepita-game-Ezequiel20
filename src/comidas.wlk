import wollok.game.*
import pepita.*
import roque.*
object manzana {
	var property position=game.at(5,1)
	method image() = "manzana.png"
	method energia() = 80
	method teEncontre(ave){
		game.removeVisual(self)
		ave.come(self)
		ave.move(self.position())
	}	
	method encontreAlgo(entrenador){
		game.removeVisual(self)
		if(entrenador.comidaGuardada()!=null){
		game.addVisual(entrenador.comidaGuardada())
		entrenador.comidaGuardada().position(game.at(10.randomUpTo(7).truncate(0),10.randomUpTo(2).truncate(0)))	
		}
		entrenador.encontreComida(self)
	}
	
}

object alpiste {
	var property position=game.at(5,5)

	method image() = "alpiste.png"
	method energia() = 5
	method teEncontre(ave){
		game.removeVisual(self)
		ave.come(self)
		ave.move(self.position())
	}
	method encontreAlgo(entrenador){
	game.removeVisual(self)
	if(entrenador.comidaGuardada()!=null){
	game.addVisual(entrenador.comidaGuardada())	
	entrenador.comidaGuardada().position(game.at(10.randomUpTo(2).truncate(0),10.randomUpTo(7).truncate(0)))	
	
	}
	entrenador.encontreComida(self)
	}
}
