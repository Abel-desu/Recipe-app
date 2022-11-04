Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :users
  root 'users#index'

  get 'recipe_foods/:id/new', to: 'recipe_foods#new'
  delete 'recipe_foods/:id/destroy/:food_id', to: 'recipe_foods#destroy'
  post 'recipe_foods/:id/create', to: 'recipe_foods#create'

  resources :recipes, only: %i[index show destroy new create] do
    resources :recipe_foods, only: %i[index edit destroy]
  end

  namespace :public_recipes do
    get '', action: 'index'
    get '/:id', action: 'show'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
