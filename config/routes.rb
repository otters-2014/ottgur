Devise::Application.routes.draw do
  devise_for :users
  devise_scope :user do
      get "/users/sign_out", to: "devise/sessions#destroy"
  end

  root 'images#index'
  resources :images do
    resources :votes, only: [:create]
  end

  get '/users/:user_id', to: redirect('/users/%{user_id}/favorites')
  post "/images/:image_id/favorites", to: "favorites#create", as: "image_favorites"

  resources :users do
    resources :favorites
  end

# get '/stories', o: redirect('/posts')
  resources :users, only: [:show, :update], shallow: true do
    resources :images, only: [:show, :create, :delete, :index], shallow: true do
      resources :comments, shallow: true
    end
  end

  match 'hidden', to: 'static_pages#hidden', via: "get", as: "hidden"
end
