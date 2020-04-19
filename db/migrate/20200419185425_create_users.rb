class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :tipo_usuario
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.string :distrito
      t.string :tipo_documento
      t.string :numero_documento
      t.date :fecha_nacimiento
      t.date :fecha_inicio
      t.integer :talla
      t.decimal :peso
      t.string :sexo
      t.boolean :esta_en_escalada
      t.boolean :esta_en_entrenamiento
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
