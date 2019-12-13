Rails.application.routes.draw do
  devise_for :users
  resources :tamus
  resources :suppliers
  resources :tipepakets
  resources :pakets
  resources :invoices
  resources :bankaccounts
  root "tamus#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
