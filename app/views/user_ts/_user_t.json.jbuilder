json.extract! user_t, :id, :tipo_persona, :numero_documento, :fecha_inicial, :fecha_vencimiento, :nombre, :correo_electronico, :telefono_principal, :telefono_secundario, :created_at, :updated_at
json.url user_t_url(user_t, format: :json)
