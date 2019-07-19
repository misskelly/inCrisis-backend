class GoogleDistanceService

  def initialize(lat, lng, destinations_cords)
    @lat = lat
    @lng = lng
    @destinations_cords = destinations_cords
  end

  def get_json
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new('https://maps.googleapis.com/maps/api/distancematrix/json') do |f|
      f.params['origins']="#{@lat},#{@lng}"
      f.params['destinations']= @destinations_cords
      f.params['mode']='driving'
      f.params['units']='imperial'
      f.params['key']=ENV['GOOGLE_DISTANCE_API_KEY']
      f.adapter Faraday.default_adapter
    end
  end

end
