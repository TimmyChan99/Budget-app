Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'users#home', as: :authenticated_root
    end
  
    unauthenticated do
      root 'users#splash', as: :unauthenticated_root
    end
  end

  # root "users#home"
  #get 'home', to: 'users#home'
  resources :users
end
