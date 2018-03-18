class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save
		redirect_to root_path
	end
	def damage
		pokemon = Pokemon.find(params[:pokemon])
		pokemon.health = pokemon.health - 10
		if pokemon.health <= 0
			pokemon.destroy
		else
			pokemon.save
		end
		redirect_to trainer_path(params[:id])
	end
	def new
	end
	def create
		new_pokemon = Pokemon.create(pokemon_params)
		new_pokemon.level = 1
		new_pokemon.health = 100
		new_pokemon.trainer = current_trainer
		if new_pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = new_pokemon.errors.full_messages.to_sentence
			redirect_to create_path
		end
	end

	private

		def pokemon_params
			params.require(:pokemon).permit(:name, :ndex)
		end
end
