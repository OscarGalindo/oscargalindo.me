json.array!(@users) do |user|
  json.extract! user, :id, :user, :mail, :nivel
  json.url user_url(user, format: :json)
end
