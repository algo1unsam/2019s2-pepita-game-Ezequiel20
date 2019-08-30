import pepita.*
import roque.*
import wollok.game.*

object jugadores {
	var jugador = roque
	
	method miJugador(){
		return jugador
	}
	method cambioJugador(nuevoJugador){
		jugador=nuevoJugador
	}
}
