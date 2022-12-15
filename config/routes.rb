Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sign_in#index"
  resources :sign_in
  resources :feed
  resources :profil
  resources :settings
  resources :drums
  resources :track
  resources :comment
  resources :vote
end
