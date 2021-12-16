class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :race, :location, :description)
  end
end
