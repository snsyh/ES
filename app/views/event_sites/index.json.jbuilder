json.array!(@event_sites) do |event_site|
  json.extract! event_site, :id, :event_site_name, :prefecture_type_id, :near_station, :access_route, :host_comment, :carpark_type_id, :capacity, :degrees_of_latitude, :degrees_of_longitude
  json.url event_site_url(event_site, format: :json)
end
