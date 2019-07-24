class Api::V1::LocationsController < ApplicationController

  def index
    render json: LocationSerializer.new(Location.all)
  end

end
