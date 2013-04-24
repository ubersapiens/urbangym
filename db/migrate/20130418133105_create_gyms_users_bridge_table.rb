class CreateGymsUsersBridgeTable < ActiveRecord::Migration
  def change
    create_table :gyms_users, :id => false do |t|
      t.references :user
      t.references :gym
    end
    add_index :gyms_users, :user_id
    add_index :gyms_users, :gym_id
    add_index :gyms_users, [ :gym_id, :user_id ], :unique => true
  end
end
