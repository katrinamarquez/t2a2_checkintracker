json.extract! restaurant, :id, :restaurant_name, :restaurant_address, :restaurant_phone, :restaurant_email, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
