class SheltersController < ApplicationController

  def index
    @shelters = Shelter.order(sort_by_column(Shelter))
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.save
    redirect_to @shelter
  end

  def new
    @shelter = Shelter.new
  end

  def show
    @shelter = Shelter.find(id=params[:id])
    @shelter_animals = Animal.where(shelter_id: params[:id])
  end

  private
  # without this, submit will only create empty objects
  # be sure to update these params if the model changes
  def shelter_params
    params.require(:shelter).permit(:name, :city, :phone)
  end

end