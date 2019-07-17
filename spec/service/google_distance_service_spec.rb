require 'rails_helper'

describe 'GoogleDistanceAPI' do
  describe 'response' do
    it 'returns an array of location information' do
      lat = 39.7504
      lng = -104.9963

      response = GoogleDistanceAPI.new(lat, lng)

      locations = response[:rows][0][:elements]

      expect(locations.count).to eq(10)
      expect(locations.first.has_key?(:distance)).to eq(true)
      expect(locations.first.has_key?(:duration)).to eq(true)
    end
  end
end
