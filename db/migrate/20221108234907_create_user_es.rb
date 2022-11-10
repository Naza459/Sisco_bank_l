class CreateUserEs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_es do |t|
      t.text :tipo_persona
      t.bigint  :numero_documento
      t.timestamp :fecha_inicial
      t.timestamp :fecha_vencimiento
      t.text :nombre
      t.text :correo_electronico
      t.bigint :telefono_principal
      t.bigint :telefono_secundario

      t.timestamps
    end
  end
end
