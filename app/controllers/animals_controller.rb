class AnimalsController < ApplicationController

  def index
    @animals = Animal.order(sort_by_column(Animal))
  end

  def create
    #foo
  end

  def show
    @animal = Animal.find(id=params[:id])
  end

end