class Gym < ActiveRecord::Base
  attr_accessible :description, :full_street_address, :latitude, :longitude, :picture, :users

  has_and_belongs_to_many :users

  geocoded_by :full_street_address

  after_validation :geocode
end
