Devise::Application.routes.draw do
  devise_for :users
  devise_scope :user do
      get "/users/sign_out", to: "devise/sessions#destroy"
  end

  root 'static_pages#index'

  # patch '/images' to: "comments#create"

  resources :user, only: [:show, :update], shallow: true do
    resources :images, only: [:show, :create, :delete, :index], shallow: true do
      resources :comments, shallow: true
    end
  end


  resources :images

  match 'hidden', to: 'static_pages#hidden', via: "get", as: "hidden"
end
