Rails.application.routes.draw do
  root "orders#index"
  resources :admin_dash do
    collection {
      post :add_dist
      delete :remove_dist
    }
  end
  resources :orders
  devise_for :admins
  devise_for :distributors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
