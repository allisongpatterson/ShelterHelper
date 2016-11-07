class Shelter < ActiveRecord::Base
  attr_accessor :name, :city, :phone
  has_many :animals

  def initialize(name, city, phone)
    @name = name
    @city = city
    @phone = phone
  end

  # temporary, for debugging and such
  def display
    print 'name: #{name}, city: #{city}, phone: #{phone}'
  end
end
