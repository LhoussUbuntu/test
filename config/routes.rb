Rails.application.routes.draw do
  resources :factures
  resources :clients
  resources :products do 
    collection {post :import}
  end
  resources :users, only: [:index]
  devise_for :users
  root to: "users#index"

  post 'add_user', to: "users#add_user"
  get 'form_user', to: "users#form_user"
end
