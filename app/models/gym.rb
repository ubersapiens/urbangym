class Gym < ActiveRecord::Base
  attr_accessible :description, :full_street_address, :latitude, :longitude, :picture, :users, :user_gyms

  has_many :user_gyms
  has_many :users, :through => :user_gyms

  geocoded_by :full_street_address

  after_validation :geocode
end
