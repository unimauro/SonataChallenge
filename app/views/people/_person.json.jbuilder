json.extract! person, :id, :first_name, :last_name, :address, :pay_method, :role, :phone, :about, :created_at, :updated_at
json.url person_url(person, format: :json)
