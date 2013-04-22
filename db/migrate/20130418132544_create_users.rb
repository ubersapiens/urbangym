class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :name
      t.date :date_of_birth
      t.text :my_workout
      t.text :my_diet

      t.timestamps
    end
  end

   def self.down
    drop_table :users
  end
end
