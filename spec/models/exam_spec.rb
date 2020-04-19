require 'rails_helper'

# Test suite for the Exam model
RSpec.describe Exam, type: :model do
  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:minimo) }
  it { should validate_presence_of(:promedio) }
  it { should validate_presence_of(:maximo) }
end