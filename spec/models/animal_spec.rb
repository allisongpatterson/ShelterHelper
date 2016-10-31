require 'rails_helper'

describe 'given an Animal object' do

  subject do
    Animal.new('Bruce', 4, 'male')
  end

  describe 'we can access its attributes' do

    it 'has the expected attributes' do
      is_expected.to respond_to(:name)
      is_expected.to respond_to(:age)
      is_expected.to respond_to(:sex)
    end

    it 'doesn\'t have unexpected attributes' do
      is_expected.not_to respond_to(:height)
      is_expected.not_to respond_to(:smell)
      is_expected.not_to respond_to(:drool)
    end

  end
  
end