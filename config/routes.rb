Rails.application.routes.draw do
  devise_for :users
  root "users#home"
  get 'home', to: 'users#home'
  resources :users
end
