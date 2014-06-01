json.array!(@trips) do |trip|
  json.extract! trip, :id, :trip_id, :origin, :destination, :dt_of_origin, :dt_of_arrival
  json.url trip_url(trip, format: :json)
end
