class WelcomeController < ApplicationController 

  def index
    render json: { "Welcome": "Welcome to inCrisis. For API documentation please visit: https://github.com/CSheesley/ccs_cross_poll_backend" }
  end

end