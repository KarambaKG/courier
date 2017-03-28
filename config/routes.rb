Rails.application.routes.draw do
  root 'order#index'

  devise_for :users

  resource :order
end
