Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'foods#index'
  resources :recipes do
    resources :recipe_foods
  end
  resources :foods
  resources :shopping_list, only: [:index]
  get 'public_recipes/index'

end
