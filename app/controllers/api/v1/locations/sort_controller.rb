class Api::V1::Locations::SortController < ApplicationController

  def index
    # this is placeholder json
    render json: { 
      "Location Data To Come": "will match this format",
      "locations": [
      {
        "id": 1,
        "name": "Denver Walk-In Crisis Services",
        "phone": 3035041299,
        "address": "4353 E. Colfax Avenue",
        "city": "Denver", 
        "state": "CO", 
        "zip": 80220,
        "hours": "24 hours a day, 7 days a week",
        "lat": 39.7403,
        "lng": -104.9363
      },
      {
        "id": 2,
        "name": "Boulder Walk-In Crisis Services",
        "phone": 3034438500,
        "address": "3180 Airport Road",
        "city": "Boulder",
        "state": "CO",
        "zip": 80301,
        "hours": "24 hours a day, 7 days a week",
        "lat": 40.0330,
        "lng": -105.2360
      }
    ]
  }
  end

end