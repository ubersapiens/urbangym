class CreateUserGyms < ActiveRecord::Migration
  def change
    create_table :user_gyms do |t|
      t.references :user
      t.references :gym
      t.boolean :is_favorite

      t.timestamps
    end
    add_index :user_gyms, :user_id
    add_index :user_gyms, :gym_id
  end
end
