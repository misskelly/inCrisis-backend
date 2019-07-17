require 'rails_helper'

describe Location, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :street }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip }
    it { should validate_presence_of :office_hours }
    it { should validate_presence_of :lat }
    it { should validate_presence_of :lng }
  end
end
