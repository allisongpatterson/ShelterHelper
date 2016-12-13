class Animal < ActiveRecord::Base
  # attr_accessor :name, :age, :sex
  belongs_to :shelter
end
