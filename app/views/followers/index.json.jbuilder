json.array!(@followers) do |follower|
  json.extract! follower, :id, :count, :band_id, :user_id
  json.url follower_url(follower, format: :json)
end
