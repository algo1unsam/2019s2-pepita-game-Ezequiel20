import ciudades.*
import wollok.game.*
import comidas.*
import roque.*
object pepita {
	var property energia = 100
	var property ciudad = null 
	var property position = game.at(3,3)
	method image(){
		if(energia>100){
			return "pepita-gorda-raw.png"
		}
		else{
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			if(energia<self.energiaParaVolar(position.distance(unaCiudad.position()))){
				game.say(self,"Dame de comer primero!")
			}
			else{
			self.move(unaCiudad.position())
			ciudad = unaCiudad
			
			}			
		}
	}
	method volaHaciaCondicional(unaCiudad){
		if(self.position()==unaCiudad.position()){
			game.say(self,"Ya estoy en "+unaCiudad)
		}
		else{
			self.volaHacia(unaCiudad)
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}	
	method encontreAlgo(entrenador){
	if(entrenador.comidaGuardada()!=null){
	self.come(entrenador.comidaGuardada())
	}	
	}
}
