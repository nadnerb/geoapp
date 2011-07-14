class User < ActiveRecord::Base

  geocoded_by :full_address
  after_validation :geocode

  acts_as_gmappable :latitude => 'latitude', :longitude => 'longitude', :checker => :prevent_geocoding, 
                  :msg => "Sorry, not even Google could figure out where that is"

  def prevent_geocoding
    address.blank? || (!lat.blank? && !lng.blank?) 
  end

  def full_address
    "#{street} #{suburb} #{postcode} #{state} #{country}"
  end
end
