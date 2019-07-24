require 'rails_helper'

describe 'LocationsFacade' do
  describe 'instance methods' do
    context '#combined_data' do
      it 'returns model data combined with api call data for each location' do
        VCR.use_cassette('facades/locations_facade_cassette') do
          loc_1 = create(:location, id: 1, lat: 41.0003 , lng: -107.0003)
          loc_2 = create(:location, id: 2, lat: 39.5001, lng: -105.0001)
          loc_3 = create(:location, id: 3, lat: 40.0002, lng: -106.0002)

          params = {lat: "39.7504", lng: "-104.9963"}

          combined_data = LocationsFacade.new(params).combined_data

          expect(combined_data.count).to eq(3)
          expect(combined_data.first.keys.count).to eq(16)

          expect(combined_data.first.has_key?(:miles)).to eq(true)
          expect(combined_data.first.has_key?(:meters)).to eq(true)
          expect(combined_data.first.has_key?(:minutes)).to eq(true)
          expect(combined_data.first.has_key?(:seconds)).to eq(true)
        end
      end
    end

    context '#sorted' do
      it 'returns hash of combined location data sorted by closest proximity' do
        VCR.use_cassette('facades/locations_facade_cassette') do
          farthest = create(:location, id: 1, lat: 41.0003 , lng: -107.0003)
          closest = create(:location, id: 2, lat: 39.5001, lng: -105.0001)
          middle = create(:location, id: 3, lat: 40.0002, lng: -106.0002)

          params = {lat: "39.7504", lng: "-104.9963"}

          sorted = LocationsFacade.new(params).sorted

          expect(sorted.class).to eq(Hash)
          expect(sorted[:locations].count).to eq(3)

          expect(sorted[:locations].first[:id]).to eq(closest.id)
          expect(sorted[:locations].first[:miles]).to eq(19.9)

          expect(sorted[:locations].second[:id]).to eq(middle.id)
          expect(sorted[:locations].second[:miles]).to eq(85.4)

          expect(sorted[:locations].third[:id]).to eq(farthest.id)
          expect(sorted[:locations].third[:miles]).to eq(202.0)
        end
      end
    end
  end
end
