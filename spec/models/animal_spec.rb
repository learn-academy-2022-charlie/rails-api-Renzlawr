require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'must include a common name, or a latin name.' do
    test_animal = Animal.create kingdom: 'Mammal'
    expect(test_animal.errors[:common_name]).to_not be_empty
    expect(test_animal.errors[:latin_name]).to_not be_empty
  end
  it 'must not have the exact same common and latin name' do
    test_animal = Animal.create common_name: 'chicken', latin_name: 'chicken'
    expect(test_animal.errors[:common_name]).to_not eq(test_animal.errors[:latin_name])
  end
end
