class User < ActiveRecord::Base

  geocoded_by :full_address
  after_validation :geocode

  acts_as_gmappable :lat => 'latitude', :lng => 'longitude', 
                  :checker => :prevent_geocoding,
                  :address => "full_address", #:normalized_address => "full_address",
                  :msg => "Sorry, not even Google could figure out where that is"

  def prevent_geocoding
    full_address.blank? || (!latitude.blank? && !longitude.blank?) 
  end

  def full_address
    "#{street} #{suburb} #{postcode} #{state} #{country}"
  end

  def gmaps4rails_infowindow
    name 
  end
end
