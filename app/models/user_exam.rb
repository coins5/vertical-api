class UserExam < ApplicationRecord
  belongs_to :user
  belongs_to :exam

  validates_presence_of :fecha, :puntaje
end
