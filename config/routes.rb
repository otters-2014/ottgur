Devise::Application.routes.draw do
  # get "images/create"
  # get "images/delete"
  # get "images/show"
  # get "images/index"

  # resources :images

  devise_for :users
  # do
  #   get 'users/sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  #   # get 'signin' => 'devise/sessions#new', :as => :new_user_session
    # post 'signin' => 'devise/sessions#create' :as => :user_session
devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
    # get "/users/sign_in", to: "devise/sessions#create"
end



      root 'static_pages#index'


  # resources :images, only: [:show, :create, :delete, :index] do
  #   resources :comments
  # end


    resources :user, only: [:show, :update], shallow: true do
      resources :images, only: [:show, :create, :delete, :index], shallow: true do
        resources :comments, shallow: true
      end
    end

    resources :images

  match 'hidden', to: 'static_pages#hidden', via: "get", as: "hidden"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
