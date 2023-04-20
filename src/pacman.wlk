import wollok.game.*

object pacman {
	var property image = "pacman.png"
	var property position = game.origin()
	var property vidas = 3
	
	method perderVida(){
		vidas--
		position = game.origin()
	}
	method chocarCon(rival){
		self.perderVida()
		rival.position(game.center())
		self.position(game.origin())
	}
	
	
	
	
}

object rival{
	var property position = game.at(5,4)
	var property image = "rival2.png"
	
	method acercaseA(personaje){
		var posPacman = personaje.position()
		var newX = position.x() + if (posPacman.x()> position.x()){1} else if(posPacman.x()< position.x()) {-1} else {0}
		var newY = position.y() + if (posPacman.y()> position.y()){1} else if(posPacman.y()< position.y()) {-1} else {0}
		
		position = game.at(newX,newY)
	
	
	}
	
}