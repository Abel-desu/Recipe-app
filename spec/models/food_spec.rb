require 'rails_helper'

RSpec.describe Food, type: :model do
  user = User.create(name: 'User1')
  subject { described_class.new }
  before :each do
    subject.user = user
    subject.name = 'burger'
    subject.measurement_unit = 'gram'
    subject.price = 5
    subject.quantity = 'Boil it'
  end

  it 'Expect the subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Should have a name' do
    subject.name = 'burger'
    expect(subject).to be_valid
  end
  it 'Should have measurement value' do
    subject.measurement_unit = 'gram'
    expect(subject).to be_valid
  end
  it 'Should have price with numeric value' do
    subject.price = '5'
    expect(subject).to be_valid
  end
  it 'Should have a quantity' do
    subject.quantity = '0'
    expect(subject).to be_valid
  end
end
