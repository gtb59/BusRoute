class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :trip_id
      t.string :origin
      t.string :destination
      t.datetime :dt_of_origin
      t.datetime :dt_of_arrival

      t.timestamps
    end
  end
end
