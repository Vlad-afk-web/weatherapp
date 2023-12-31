Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :weather do
    get :search, on: :collection
  end
  resources :users, only: [:edit, :update]
end
