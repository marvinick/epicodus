json.array!(@pingpongs) do |pingpong|
  json.extract! pingpong, :id, :name
  json.url pingpong_url(pingpong, format: :json)
end
