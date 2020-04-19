require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Sede, type: :model do
  # Validation tests
  it { should validate_presence_of(:nombre) }
  it { should validate_presence_of(:distrito) }
end
