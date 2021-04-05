Rails.application.routes.draw do
  # get 'items/new'
  # get 'items/create'
  # get 'items/edit'
  # get 'items/update'
  # get 'items/destroy'
  # get 'items/pick'
  patch 'items/pick/:id', to: "items#pick", as: :pick

  devise_for :users
  root to: 'lists#index'
  resources :lists
  resources :items


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

