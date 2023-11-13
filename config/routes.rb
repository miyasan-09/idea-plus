Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  root to: "products#index"
  resources :products, only: [:index]
end
