json.extract! inventory, :id, :car_model, :price, :km, :seating, :availability, :doors, :address, :state, :dealership, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
