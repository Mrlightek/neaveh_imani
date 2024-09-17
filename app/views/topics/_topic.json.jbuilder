json.extract! topic, :id, :title, :body, :category_id, :user_id, :created_at, :updated_at
json.url topic_url(topic, format: :json)
