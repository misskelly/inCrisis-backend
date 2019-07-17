require 'rails_helper'  

describe 'Locations API' do 
  context 'sort' do
    it 'returns 200 status code' do
      get '/api/v1/locations/sort' 

      expect(response.status).to eq(200)
    end
  end
end