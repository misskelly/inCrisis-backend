class Api::V1::Locations::InformationTextController < ApplicationController

  def create
    SendTextService.new(strong_params).send_sms
    render json: {response: 'Text Message Sent' }, :status => 201
  end

  private

    def strong_params
      params.permit(:location_id, :phone)
    end

end
