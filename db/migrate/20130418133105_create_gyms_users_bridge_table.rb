class CreateGymsUsersBridgeTable < ActiveRecord::Migration
  def change
    create_table :user_gyms do |t|
      t.references :user
      t.references :gym

      t.timestamps
    end
    add_index :user_gyms, :user_id
    add_index :user_gyms, :gym_id
    add_index :user_gyms, [ :gym_id, :user_id ], :unique => true
  end
end
