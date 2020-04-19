class Sede < ApplicationRecord
  validates_presence_of :nombre, :distrito
end
