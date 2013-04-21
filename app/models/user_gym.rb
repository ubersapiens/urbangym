class UserGym < ActiveRecord::Base
  attr_accessible :is_favorite, :user, :gym

  belongs_to :user
  belongs_to :gym
end
