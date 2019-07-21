require 'rails_helper'

describe 'GoogleDistanceService' do
  describe 'instance methods' do
    context '#get_json' do
      it 'returns an array of location information' do
        VCR.use_cassette('services/google_distance_cassette') do
          create(:location, lat: 39.7807 , lng: -105.0828)
          create(:location, lat: 39.5982, lng: -105.0218)
          create(:location, lat: 40.033, lng: -105.2338)

          lat = 39.7504
          lng = -104.9963
          destinations_cords = Location.all_cords_formatted

          response = GoogleDistanceService.new(lat, lng, destinations_cords).get_json

          locations = response[:rows][0][:elements]

          expect(locations.count).to eq(3)
          expect(locations.first.has_key?(:distance)).to eq(true)
          expect(locations.first.has_key?(:duration)).to eq(true)
        end
      end
    end
  end
end
