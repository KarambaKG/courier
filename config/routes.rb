Rails.application.routes.draw do
  root 'main#index'

  devise_for :users

  resource :order
end
