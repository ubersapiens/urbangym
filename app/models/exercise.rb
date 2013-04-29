class Exercise < ActiveRecord::Base
  attr_accessible :description, :name, :video_url, :users, :user_exercises

  has_many :user_exercises
  has_many :users, :through => :user_exercises
end
