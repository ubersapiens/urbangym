class UserExercise < ActiveRecord::Base
  attr_accessible :reps, :user, :exercise, :user_id, :exercise_id

  belongs_to :user
  belongs_to :exercise
end
