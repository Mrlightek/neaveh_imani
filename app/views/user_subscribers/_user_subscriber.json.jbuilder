json.extract! user_subscriber, :id, :to, :from, :created_at, :updated_at
json.url user_subscriber_url(user_subscriber, format: :json)
