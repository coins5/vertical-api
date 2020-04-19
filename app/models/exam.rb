class Exam < ApplicationRecord
  validates_presence_of :name, :description, :minimo, :promedio, :maximo
end
