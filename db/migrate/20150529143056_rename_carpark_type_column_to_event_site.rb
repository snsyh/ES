class RenameCarparkTypeColumnToEventSite < ActiveRecord::Migration
  def change
    rename_column :event_sites, :carpark_type, :carpark_type_id
  end
end
