Rails.application.routes.draw do
  devise_for :costumers
  resources :deliveryinfos
  resources :ingpizzas
  resources :ingredients
  resources :recipes
  resources :orderpizzas
  resources :crusts
  resources :pizzas
  resources :orders
  resources :customers

  root 'pizzas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
