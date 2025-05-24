# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  root 'pages#home'
  resources :orders, only: [:index]
  
  get 'pages/home'
  resources :orders, only: %i[new create] do 
    collection do
      post :confirm
      get :complete
    end
  end

  mount Sidekiq::Web, at: '/sidekiq'
end
