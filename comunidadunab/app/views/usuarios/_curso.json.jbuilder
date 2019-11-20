json.extract! usuario, :id, :id, :nombre, :apellido, :email, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
