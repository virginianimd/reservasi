Rails.application.routes.draw do
  get 'landing/index'
  resources :tamus
  resources :suppliers
  resources :tipepakets
  resources :pakets
  resources :invoices
  resources :bankaccounts

  devise_for :users
  root "landing#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
