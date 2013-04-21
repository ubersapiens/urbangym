class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :my_diet, :my_workout, :name, :password, :gyms, :user_gyms, :exercises, :user_exercises

  has_many :user_gyms
  has_many :gyms, :through => :user_gyms
  has_many :user_exercises
  has_many :exercises, :through => :user_exercises
end
