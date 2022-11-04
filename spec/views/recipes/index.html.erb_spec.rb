require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               name: 'Name',
               preparation_time: '9.99',
               cooking_time: '9.99',
               description: 'MyText',
               public: false,
               user: nil
             ),
             Recipe.create!(
               name: 'Name',
               preparation_time: '9.99',
               cooking_time: '9.99',
               description: 'MyText',
               public: false,
               user: nil
             )
           ])
  end
end
