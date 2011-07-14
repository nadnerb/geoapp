class User < ActiveRecord::Base

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{street} #{suburb} #{postcode} #{state} #{country}"
  end
end
