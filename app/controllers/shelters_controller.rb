class SheltersController < ApplicationController

  def index
    @shelters = Shelter.order(sort_by_column(Shelter))
  end

  def create
    #foo
  end

  def show
    #foo
  end

end