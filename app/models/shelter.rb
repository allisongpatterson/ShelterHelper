class Shelter < ActiveRecord::Base
  # attr_accessor :name, :city, :phone
  has_many :animals
end
