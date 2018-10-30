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
		#redirect_to "/trainers/#{current_trainer.id}"
		redirect_to trainer_path(current_trainer) 
 	end

        def new
		render 'new/new'
        end
	
	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name] 
		@pokemon.level = 1
		@pokemon.Health = 100
		@pokemon.trainer = current_trainer 
		if @pokemon.save
			redirect_to trainer_path(id: current_trainer)
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end
	end
end

