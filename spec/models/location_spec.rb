require 'rails_helper'

describe Location, type: :model do
  describe 'validations' do
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

  describe 'methods' do
    context '::all_cords_formatted' do
      it 'returns a string of lat,lng info for all locations, separated in pipes' do
        create(:location, lat: 39.7807 , lng: -105.0828)
        create(:location, lat: 39.5982, lng: -105.0218)
        create(:location, lat: 40.033, lng: -105.2338)

        expected = '39.7807,-105.0828|39.5982,-105.0218|40.033,-105.2338'

        expect(Location.all_cords_formatted).to eq(expected)
      end
    end
  end

end
