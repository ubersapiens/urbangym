class UserExercise < ActiveRecord::Base
  attr_accessible :reps, :user, :exercise

  belongs_to :user
  belongs_to :exercise
end
