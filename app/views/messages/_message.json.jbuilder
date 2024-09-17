json.extract! message, :id, :title, :body, :to, :user_id, :is_fav, :created_at, :updated_at
json.url message_url(message, format: :json)
