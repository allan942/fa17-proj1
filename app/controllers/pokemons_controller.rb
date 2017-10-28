class PokemonsController < ApplicationController
  def capture
  	pokemon = Pokemon.find(params[:id])
  	pokemon.trainer_id = current_trainer.id
  	pokemon.save
  	redirect_to "/"
  end

  def damage
  	pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    if pokemon.health != 0
      pokemon.save
    else
      pokemon.destroy
    end
    redirect_to trainer_path(current_trainer)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new(name: params[:pokemon][:name], level: 1, trainer_id: current_trainer.id, health: 100)
    pokemon.save
    if pokemon.valid?
      redirect_to trainer_path(current_trainer)
    else
      redirect_to new_path
      flash[:error] = pokemon.errors.full_messages.to_sentence
    end
  end
end
