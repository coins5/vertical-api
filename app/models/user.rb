class User < ApplicationRecord
  validates_presence_of :tipo_usuario, :nombres, :apellidos, :direccion, :distrito, :tipo_documento, :numero_documento, :fecha_nacimiento, :fecha_inicio, :talla, :peso, :sexo, :esta_en_escalada, :esta_en_entrenamiento, :email
end
