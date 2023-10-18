Rails.application.routes.draw do
  devise_for :doctors
  devise_for :users
  resources :appointments
  get 'home/about'
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end