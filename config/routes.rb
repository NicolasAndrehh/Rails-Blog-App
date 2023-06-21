Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root "devise/sessions#new"
  end

  resources :users, only: [:index, :show] do 
    resources :posts do 
      resources :comments, only: [:new, :create]
      resources :likes, only: [:new, :create]
    end
  end
end
