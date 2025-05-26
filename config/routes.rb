# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
eature/order-page
  root 'pages#home'
  resources :orders, only: [:index]
  
  get 'pages/home'
  resources :orders, only: %i[new create] do 
  root 'top#index'
  resources :orders, only: %i[new create] do

    collection do
      post :confirm
      get :complete
      get 'index', to: 'pages#index'
    end
  end
  resources :order_histories, only: %i[index]

  mount Sidekiq::Web, at: '/sidekiq'
end
