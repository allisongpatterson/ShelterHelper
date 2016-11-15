require 'rails_helper'

describe Animal do

  # example animal object for testing
  subject { FactoryGirl.create(:animal) }

  describe 'when accessing its attributes' do

    context 'it has the expected attributes' do
      it { is_expected.to respond_to(:name) }
      it { is_expected.to respond_to(:age) }
      it { is_expected.to respond_to(:sex) }
      it { is_expected.to respond_to(:shelter_id) }
    end

    context 'it doesn\'t have unexpected attributes' do
      it { is_expected.not_to respond_to(:height) }
      it { is_expected.not_to respond_to(:smell) }
      it { is_expected.not_to respond_to(:drool) }
    end

    context 'its attributes contain the expected values' do
      it { is_expected.to have_attributes(:name => 'Bruce') }
      it { is_expected.to have_attributes(:age => 4) }
      it { is_expected.to have_attributes(:sex => 'male') }
      it { is_expected.to have_attributes(:shelter_id => 1) }
    end

  end
  
end