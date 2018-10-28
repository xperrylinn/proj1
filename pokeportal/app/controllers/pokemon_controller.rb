class PokemonController < ApplicationController
	def capture
 		Pokemon.find(params[:id]).update(trainer: current_trainer)				
	end
	
	def damage
		pokeHealth = Pokemon.find(params[:id]).Health - 10
		if pokeHealth <= 0
			# Delete the Pokemon
			nil
			Pokemon.destroy(Pokemon.find(params[:id]).id)
		else
			Pokemon.find(params[:id]).update(Health: pokeHealth)
		end
		redirect_to "/trainers/#{current_trainer.id}"
 	end
end

