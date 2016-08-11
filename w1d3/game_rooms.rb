

class Room

	attr_reader :description, :movements

	def initialize description, movements
		@description = description
		@movements = movements
	end

end

class Game

	def initialize 
		@rooms = []
		@position = 0
	end

	def add_room room
		@rooms << room
	end

	def start_game

		puts "Bienvenido"
		puts "este juego consite jflajdfljadf"
		

		while (@position < @rooms.size )
			loquemedaelusuario
		end

		puts "Bravo!!!!!"

	end

	def loquemedaelusuario 

		puts @rooms[position].description
		puts "Que opcion?"
		opcion = gets.chomp

		movement_player opcion
		#movement_player "S" 

	end


	def movement_player movement

		a = @rooms[position]

		if a.movements[movement] == "Exit"
			@position += 1
		else 
			puts "Error! Choose one"
		end

	end

end

######Ejecucion


r1 = Room.new "creo que la salida puede estar por el este", {N: "error", S: "Error", E: "Exit", W:"Error"}
r2 = Room.new "room 2", {N: "error", S: "Exit", E: "Error", W:"Error"}
r3 = Room.new "room 3", {N: "Error", S: "Error", E: "Error", W:"Exit"}
#rooms << r1
#rooms << r2
#
#game = Game.new rooms#



game = Game.new 
game.add_room r1
game.add_room r2
game.add_room r3


game.start_game