class UserE < ApplicationRecord
    validates :tipo_persona, :nombre, :correo_electronico, :fecha_inicial, :fecha_vencimiento, presence: true

end

