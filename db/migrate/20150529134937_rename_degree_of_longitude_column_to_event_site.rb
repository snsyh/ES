class RenameDegreeOfLongitudeColumnToEventSite < ActiveRecord::Migration
  def change
    rename_column :event_sites, :degree_of_longitude, :degrees_of_longitude
  end
end
