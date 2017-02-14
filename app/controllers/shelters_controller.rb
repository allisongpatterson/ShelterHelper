class SheltersController < ApplicationController

  def index
    @shelters = Shelter.order(sort_by_column(Shelter))
  end

  def create
    #foo
  end

  def show
    @shelter = Shelter.find(id=params[:id])
    @shelter_animals = Animal.where(shelter_id: params[:id])
  end

end