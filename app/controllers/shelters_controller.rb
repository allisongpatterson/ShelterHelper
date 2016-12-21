class SheltersController < ApplicationController

  def index
    @shelters = Shelter.order(sort_by_column(Shelter))
  end

  def create
    #foo
  end

  def show
    @shelter = Shelter.find(id=params[:id])
  end

end