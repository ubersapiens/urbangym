class UserExercise < ActiveRecord::Base
  attr_accessible :done_on, :reps, :time, :user, :exercise

  belongs_to :user
  belongs_to :exercise
end
