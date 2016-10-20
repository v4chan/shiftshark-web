json.extract! user_resource, :id, :user_id, :url, :created_at, :updated_at
json.url user_resource_url(user_resource, format: :json)