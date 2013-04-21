class Exercise < ActiveRecord::Base
  attr_accessible :description, :name, :picture, :users, :user_exercises

  has_many :user_exercises
  has_many :users, :through => :user_exercises
end
