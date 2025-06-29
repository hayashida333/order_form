# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  root 'pages#home'

  get 'pages/home'

  resources :orders do
    collection do
      post :confirm
      get :complete
    end
  end

  resources :goods, only: [:new, :create]
  resources :order_histories, only: %i[index]

  mount Sidekiq::Web, at: '/sidekiq'
end
