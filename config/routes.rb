Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :categories
  resource :user, only: :show
  resources :groups
  put "products/:id/upload-image", to: "products#upload_image"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
