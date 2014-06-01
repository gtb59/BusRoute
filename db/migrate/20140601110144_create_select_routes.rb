class CreateSelectRoutes < ActiveRecord::Migration
  def change
    create_table :select_routes do |t|
      t.integer :select_route_id
      t.time :start_time
      t.text :destination
      t.date :travel_date
      t.time :arrival_time

      t.timestamps
    end
  end
end
