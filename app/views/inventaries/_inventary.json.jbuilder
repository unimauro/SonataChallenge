json.extract! inventary, :id, :name, :car_id, :dealer_id, :created_at, :updated_at
json.url inventary_url(inventary, format: :json)
