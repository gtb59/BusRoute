json.array!(@select_routes) do |select_route|
  json.extract! select_route, :id, :select_route_id, :start_time, :destination, :travel_date, :arrival_time
  json.url select_route_url(select_route, format: :json)
end
