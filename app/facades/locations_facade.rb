class LocationsFacade

  def initialize(strong_params)
    @lat = strong_params[:lat].to_f
    @lng = strong_params[:lng].to_f
    @destinations_cords = Location.all_cords_formatted
  end

  def sorted
    sorted_hash = {}
    sorted_data = combined_data.sort_by { |loc| loc[:miles] }
    sorted_hash[:locations] = sorted_data

    sorted_hash
  end

  def combined_data
    Location.all.each_with_index.map do |location, index|
      {
        id: location.id,
        name: location.name,
        phone: location.phone,
        street: location.street,
        city:location.city,
        state: location.state,
        zip: location.zip,
        office_hours: location.office_hours,
        lat: location.lat,
        lng: location.lng,
        website: location.website,
        logo: location.logo,
        miles: miles(index),
        meters: meters(index),
        minutes: minutes(index),
        seconds: seconds(index)
      }
    end
  end

  private

    def miles(index)
      proximity_json[:rows][0][:elements][index][:distance][:text].to_f
    end

    def meters(index)
      proximity_json[:rows][0][:elements][index][:distance][:value].to_f
    end

    def minutes(index)
      proximity_json[:rows][0][:elements][index][:duration][:text].to_f
    end

    def seconds(index)
      proximity_json[:rows][0][:elements][index][:duration][:value].to_f
    end

    def proximity_json
      service.get_json
    end

    def service
      @_service = GoogleDistanceService.new(@lat, @lng, @destinations_cords)
    end

end
