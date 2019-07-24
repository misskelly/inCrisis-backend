class LocationSerializer

  def initialize(locations)
    @locations = locations
  end

  def formatted
    location_hash = {}
    location_hash[:locations] = all_location_data

    location_hash
  end

  def all_location_data
    @locations.each do |loc|
      {
        id: loc.id,
        name: loc.name,
        phone: loc.phone,
        street: loc.street,
        city: loc.city,
        state: loc.state,
        zip: loc.zip,
        office_hours: loc.office_hours,
        lat: loc.lat,
        lng: loc.lng
      }
    end
  end

end
