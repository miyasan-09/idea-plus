Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  root to: "products#index"
  resources :products, only: [:index, :show] do
    resources :comments, only: [:create]
  end
end
