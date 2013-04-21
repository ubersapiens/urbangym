class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :full_street_address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
