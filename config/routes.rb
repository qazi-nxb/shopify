Rails.application.routes.draw do

  namespace :admin do
    get 'welcome/index'
  end
  namespace :admin do
    get 'users/index'
  end
  namespace :admin do
    resources :products
    resources :users
    resources :orders
    resources :categories
  end
  devise_for :users
  get 'welcome/index'
  root "welcome#index"
  get 'add_to_cart', to: 'cart#add_to_card'
  get 'cart/index'
  delete 'remove', to: 'cart#destroy'
  get 'payments/index'
  get "cash_on_delivery", to: 'payments#cash_on_delivery'
  get "credit_cart_payment", to: 'payments#credit_cart_payment'
  resources :addresses
  resources :categories
  resources :search, only: [:index]

  get 'show_subcategory', to: "categories#show_subcategory"
  get 'search', to: "products#search"
  get '/welcome/search_products', to: "products#tagged", as: :tagged
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
