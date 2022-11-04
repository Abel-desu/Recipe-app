require 'rails_helper'

RSpec.describe Recipe, type: :request do
  user = User.create(name: 'User1', email: 'shah@gmail.com', password: '123456')

  subject { described_class.new }
  before :each do
    subject.user = user
    subject.name = 'Pizza'
    subject.preparation_time = 50
    subject.cooking_time = 6.9
    subject.description = 'Bake it'
    subject.save
    sign_in user
  end

  it " '/recipes' leads to the recipe index page" do
    get recipes_path
    expect(response).to render_template(:index)
  end
  it " '/recipes/new' leads to recipe new page" do
    get new_recipe_path
    expect(response).to render_template(:new)
  end
  it " '/recipes/:id' leads to the recipe's show page" do
    get recipe_path subject
    expect(response).to render_template(:show)
  end
end
