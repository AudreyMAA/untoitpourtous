class DemandsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @user = current_user
    @demand = Demand.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @user = current_user
    @demand = Demand.new(demand_params)
    @demand.user = @user
    @demand.animal = @animal

    if @demand.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  private

  def demand_params
    params.require(:demand).permit(:description)
  end
end
