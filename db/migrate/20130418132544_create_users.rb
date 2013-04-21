class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.date :date_of_birth
      t.text :my_workout
      t.text :my_diet

      t.timestamps
    end
  end
end
