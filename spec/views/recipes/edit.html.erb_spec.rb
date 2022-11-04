require 'rails_helper'

RSpec.describe 'recipes/edit', type: :view do
  let(:recipe) do
    Recipe.create!(
      name: 'Recipe Name',
      preparation_time: '6.99',
      cooking_time: '6.99',
      description: 'Disc',
      public: false,
      user: nil
    )
  end

  before(:each) do
    assign(:recipe, recipe)
  end
end
