json.extract! user, :id, :tipo_persona, :Text, :numero_documento, :Integer, :fecha_inicial, :datetime, :fecha_vencimiento, :datetime, :nombre, :Text, :correo_electronico, :Text, :telefono_principal, :Integer, :telefono_secundario, :Integer, :created_at, :updated_at
json.url user_url(user, format: :json)
