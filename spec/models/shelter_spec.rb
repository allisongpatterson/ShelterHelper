require 'rails_helper'

describe Shelter do

  subject do
    Shelter.new('Furry Friends Shelter', 'Sunnyvale', '123-456-7890')
  end

  describe 'we can access its attributes' do

    it 'has the expected attributes' do
      is_expected.to respond_to(:name)
      is_expected.to respond_to(:city)
      is_expected.to respond_to(:phone)
    end

    it 'doesn\'t have unexpected attributes' do
      is_expected.not_to respond_to(:color)
      is_expected.not_to respond_to(:parking)
      is_expected.not_to respond_to(:security)
    end

  end
  
end