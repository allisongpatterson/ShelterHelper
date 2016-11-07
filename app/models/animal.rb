class Animal < ActiveRecord::Base
  attr_accessor :name, :age, :sex
  belongs_to :shelter

	def initialize(name, age, sex)
    # note to self: @some_attribute is pretty
    # much shorthand for self.some_attribute
    # you can access it either way later
    @name = name
    @age = age
    @sex = sex
  end

  # temporary, for debugging and such
  def display
    print 'name: ', @name, ', age: ', @age, ', sex: ', @sex
  end
end
