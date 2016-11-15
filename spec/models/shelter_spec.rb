require 'rails_helper'

describe Shelter do

  # example shelter object for testing
  subject { FactoryGirl.create(:shelter) }

  describe 'when accessing its attributes' do

    context 'it has the expected attributes' do
      it { is_expected.to respond_to(:name) }
      it { is_expected.to respond_to(:city) }
      it { is_expected.to respond_to(:phone) }
    end

    context 'it doesn\'t have unexpected attributes' do
      it { is_expected.not_to respond_to(:color) }
      it { is_expected.not_to respond_to(:parking) }
      it { is_expected.not_to respond_to(:security) }
    end

    context 'its attributes contain the expected values' do
      it { is_expected.to have_attributes(:name => 'Second Chance') }
      it { is_expected.to have_attributes(:city => 'Sunnyvale') }
      it { is_expected.to have_attributes(:phone => '123-456-7890') }
    end

  end
  
end