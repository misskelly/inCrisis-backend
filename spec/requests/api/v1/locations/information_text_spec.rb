require 'rails_helper'

describe 'Information Text API' do
  context 'POST api/v1/locations/information_text' do
    it 'returns 204 status code' do
      VCR.use_cassette('requests/information_text_cassette') do
        loc_1 = create(:location, id: 1, phone: 1234567890, office_hours: "24/7")

        post "/api/v1/locations/information_text?location_id=#{loc_1.id}&phone=#{ENV['TWILIO_TEST_SEND_NUMBER']}"

        message = JSON.parse(response.body)

        expect(response.status).to eq(201)
        expect(message['response']).to eq('Text Message Sent')
      end
    end
  end
end
