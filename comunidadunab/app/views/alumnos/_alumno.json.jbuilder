json.extract! alumno, :id, :id, :nombre, :apellido, :email, :tipo, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
