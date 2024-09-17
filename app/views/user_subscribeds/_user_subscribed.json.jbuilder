json.extract! user_subscribed, :id, :to, :from, :created_at, :updated_at
json.url user_subscribed_url(user_subscribed, format: :json)
