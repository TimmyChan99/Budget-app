Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'groups#home', as: :authenticated_root
    end
  
    unauthenticated do
      root 'users#splash', as: :unauthenticated_root
    end
  end

  resources :users do
    resources :groups, only: [:home, :show, :new]
  end
end
