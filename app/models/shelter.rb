class Shelter < ActiveRecord::Base
  attr_accessor :name, :city, :phone

  def initialize(name, city, phone)
    @name = name
    @city = city
    @phone = phone
  end

  # temporary, for debugging and such
  def display
    p self.id
    print 'name: #{name}, city: #{city}, phone: #{phone}'
  end
end
