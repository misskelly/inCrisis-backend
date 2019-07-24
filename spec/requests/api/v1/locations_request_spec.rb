require 'rails_helper'

describe 'Locations API' do
  context 'GET api/v1/locations' do
    it 'returns information on all Location objects, and a 200 status code' do
      create_list(:location, 3)

      get '/api/v1/locations'

      locations = JSON.parse(response.body)["locations"]

      first_location = locations.first
      expected_keys = [
                        "id",
                        "name",
                        "phone",
                        "street",
                        "city",
                        "state",
                        "zip",
                        "office_hours",
                        "lat",
                        "lng",
                        "created_at",
                        "updated_at"
                      ]

      expect(response.status).to eq(200)
      expect(locations.count).to eq(3)
      expect(first_location.keys).to eq(expected_keys)
    end
  end
end
