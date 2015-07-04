class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :device_name

      t.timestamps null: false
    end
  end
end
