Rails.application.routes.draw do
  resources :tamus
  resources :suppliers
  resources :tipepakets
  resources :pakets
  resources :invoices
  resources :bankaccounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
