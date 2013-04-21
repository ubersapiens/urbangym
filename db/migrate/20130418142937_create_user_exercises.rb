class CreateUserExercises < ActiveRecord::Migration
  def change
    create_table :user_exercises do |t|
      t.references :user
      t.references :exercise
      t.date :done_on
      t.integer :reps
      t.float :time

      t.timestamps
    end
    add_index :user_exercises, :user_id
    add_index :user_exercises, :exercise_id
  end
end
