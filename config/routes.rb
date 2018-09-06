Rails.application.routes.draw do
  get 'transactions/create'
  get 'products/index'
  get 'products/create'
  root "orders#index"
  resources :admin_dash do
    collection {
      post :add_dist
      delete "/remove_dist/:id", :to => 'admin_dash#remove_dist'
    }
  end
  resources :orders do
    resources :transactions
  end
  resources :products
  devise_for :admins
  devise_for :distributors, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
