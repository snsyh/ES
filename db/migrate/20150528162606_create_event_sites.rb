class CreateEventSites < ActiveRecord::Migration
  def change
    create_table :event_sites do |t|
      t.string :event_site_name
      t.string :prefecture_type_id
      t.string :near_station
      t.string :access_route
      t.string :host_comment
      t.string :carpark_type
      t.string :capacity
      t.string :degrees_of_latitude
      t.string :degree_of_longitude

      t.timestamps null: false
    end
  end
end
