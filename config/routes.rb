Bakery::Application.routes.draw do
  devise_for :admins
  get "static_pages/index"
  # get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index'

  # Example of regular route:
    # get 'login' => 'session#index'
    # post 'login' => 'session#create'

  # Example of named route that can be invoked with purchase_url(id: product.id)
    # get 'dessert/:id' => 'desserts#show', as: :dessert

  # Example resource route (maps HTTP verbs to controller actions automatically):

    # resources :desserts, only: [:new]

    resources :desserts, only: [:index, :show] do
      resources :pictures, only: [:new, :create, :update, :destroy]
    end

    resources :uploader, only: [:new]

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
    resources :admins, only: [] do
      resources :desserts do
        resources :pictures, except: [:index, :show, :edit]
      end
    end

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
