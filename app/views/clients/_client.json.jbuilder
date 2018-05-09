json.extract! client, :id, :rut, :dv, :name, :last_name, :institution_id, :created_at, :updated_at
json.url client_url(client, format: :json)
