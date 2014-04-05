Devise::Application.routes.draw do
  devise_for :users
  devise_scope :user do
      get "/users/sign_out", to: "devise/sessions#destroy"
  end

  root 'images#index'
  resources :images do
    resources :votes, only: [:create]
  end

  get '/users/:id/favorites/:id', to: 'favorites#create', as: 'favorite'

  resources :users do
    resources :favorites
  end

  resources :users, only: [:show, :update], shallow: true do
    resources :images, only: [:show, :create, :delete, :index], shallow: true do
      resources :comments, shallow: true
    end
  end

  match 'hidden', to: 'static_pages#hidden', via: "get", as: "hidden"
end
