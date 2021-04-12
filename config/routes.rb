Rails.application.routes.draw do
  patch 'items/pick/:id', to: "items#pick", as: :pick

  devise_for :users
  root to: 'lists#index'
  resources :lists do
    resources :items
  end
end

