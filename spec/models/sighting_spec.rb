require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'must include: latitude, longitude, or a date.' do
    test_sighting = Sighting.create animal_id: 1
    expect(test_sighting.errors[:date]).to_not be_empty
    expect(test_sighting.errors[:latitude]).to_not be_empty
    expect(test_sighting.errors[:longitude]).to_not be_empty
  end
end
