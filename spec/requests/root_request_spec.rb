require 'rails_helper'

describe 'Root Path' do
  context 'when I visit the root path' do
    it 'returns 200 status code with more information' do

      get '/'

      content = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(content.class).to eq(Hash)
      
      expect(content.keys[0]).to eq("Welcome")
      expect(content.values[0]).to eq("Welcome to inCrisis. For API documentation please visit: https://github.com/CSheesley/ccs_cross_poll_backend")
    end
  end
end
