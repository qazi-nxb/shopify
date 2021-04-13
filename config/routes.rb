Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
  end
  namespace :admin do
    resources :products
    resources :users
  end
  devise_for :users
  get 'welcome/index'
  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
