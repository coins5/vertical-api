require 'rails_helper'

RSpec.describe UserExam, type: :model do
  # Validation tests
  it { should validate_presence_of(:fecha) }
  it { should validate_presence_of(:puntaje) }
end
