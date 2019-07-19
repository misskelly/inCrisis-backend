class Api::V1::Locations::SortController < ApplicationController

  def index
    render json: LocationsFacade.new(strong_params).sorted
  end

  private

    def strong_params
      params.permit(:lat, :lng)
    end

end
