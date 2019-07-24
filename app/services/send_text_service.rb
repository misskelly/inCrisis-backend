class SendTextService

  def initialize(strong_params)
    @account_sid = ENV['TWILIO_ACCOUNT_SID']
    @auth_token = ENV['TWILIO_AUTH_TOKEN']
    @twilio_number = ENV['TWILIO_NUMBER']

    @delivery_number = strong_params[:phone]
    @location_id = strong_params[:location_id]
  end

  def send_sms
    client = Twilio::REST::Client.new(@account_sid, @auth_token)

    location = Location.find(@location_id)

    client.messages.create(
      from: @twilio_number,
      to: "+1#{@delivery_number}",
      body:"Nearest Center:
      #{location.name}"
    )

    client.messages.create(
      from: @twilio_number,
      to: "+1#{@delivery_number}",
      body:"Info:
      #{location.street}
      #{location.city}, #{location.state} #{location.zip}
      Hours: #{location.office_hours}
      Phone: #{location.phone}"
    )
  end

end
