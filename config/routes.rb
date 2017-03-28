Rails.application.routes.draw do
  root 'orders#index'

  devise_for :users

  resource :orders

end
