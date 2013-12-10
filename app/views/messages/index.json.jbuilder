json.array!(@messages) do |message|
  json.extract! message, :id, :post, :user_id, :title
  json.url message_url(message, format: :json)
end
