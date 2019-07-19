class Location < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :street
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
  validates_presence_of :office_hours
  validates_presence_of :lat
  validates_presence_of :lng

  def self.all_cords_formatted
    Location.all.map {|l| l.lat.to_s + "," + l.lng.to_s }.join("|")
  end
end
