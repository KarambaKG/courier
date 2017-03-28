Rails.application.routes.draw do
  root 'orders#index'

  devise_for :users

  resource :orders

  get '/assign_order_to_user/:id' => 'orders#assign_order_to_user', as: 'assign'


end
