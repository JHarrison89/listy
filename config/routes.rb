Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  get 'lists/edit'
  get 'lists/update'
  get 'lists/destroy'
  devise_for :users
  root to: 'lists#index'
  resources :lists
  resources :items


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

