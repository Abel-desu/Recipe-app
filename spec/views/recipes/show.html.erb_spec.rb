require 'rails_helper'

RSpec.describe 'recipes/show', type: :view do
  before(:each) do
    assign(:recipe, Recipe.create!(
                      name: 'Name',
                      preparation_time: '9.99',
                      cooking_time: '9.99',
                      description: 'MyText',
                      public: false,
                      user: nil
                    ))
  end
end
