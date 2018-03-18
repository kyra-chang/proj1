class RemoveTrainerIdToPokemons < ActiveRecord::Migration[5.1]
  def change
  	remove_column :pokemons, :trainer_id_id
  end
end
