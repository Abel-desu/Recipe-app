require 'rails_helper'

RSpec.describe Recipe, type: :model do
  user = User.create(name: 'User1')
  subject { described_class.new }
  before :each do
    subject.user = user
    subject.name = 'Rice'
    subject.preparation_time = 45
    subject.cooking_time = 6.9
    subject.description = 'Cook it'
  end

  it 'Subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'SProper prepration time' do
    subject.preparation_time = 'Five'
    expect(subject).to_not be_valid
  end
  it 'Proper cooking time' do
    subject.cooking_time = 'Five'
    expect(subject).to_not be_valid
  end
  it 'Should have a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
