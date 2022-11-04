require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  food = Food.create
  recipe = Recipe.create
  subject { described_class.new }
  before :each do
    subject.recipe = recipe
    subject.food = food
    subject.quantity = 50
  end

  it 'Subject to be valid' do
    expect(subject).to be_valid
  end

  it 'Quantity with numeric value' do
    subject.quantity = 'Three'
    expect(subject).to_not be_valid
  end
  it 'Quantity should be greater than zero' do
    subject.quantity = -40
    expect(subject).to_not be_valid
  end
end
