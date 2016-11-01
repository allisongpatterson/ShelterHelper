require 'rails_helper'

describe Animal do

  # example animal object for testing
  subject do
    Animal.new('Bruce', 4, 'male')
  end

  describe 'when accessing its attributes' do

    context 'it has the expected attributes' do
      it { is_expected.to respond_to(:name) }
      it { is_expected.to respond_to(:age) }
      it { is_expected.to respond_to(:sex) }
    end

    context 'it doesn\'t have unexpected attributes' do
      it { is_expected.not_to respond_to(:height) }
      it { is_expected.not_to respond_to(:smell) }
      it { is_expected.not_to respond_to(:drool) }
    end

  end
  
end