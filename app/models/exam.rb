class Exam < ApplicationRecord
  validates_presence_of :tipo_examen, :name, :description, :minimo, :promedio, :maximo
end
