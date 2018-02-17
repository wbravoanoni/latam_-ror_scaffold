json.extract! perro, :id, :nombre, :imagen, :descripcion, :edad, :created_at, :updated_at
json.url perro_url(perro, format: :json)
