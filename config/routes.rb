Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :users
  resource :user, only: :show
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
