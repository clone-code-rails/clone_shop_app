Rails.application.routes.draw do
  get 'carts/create'
  root "home#index"
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :packs, only: [:index, :show]

  resources :carts, only: [:create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
