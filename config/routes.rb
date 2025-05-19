# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  root "top#index"
  resources :orders, only: %i[new create] do
    collection do
      post :confirm
      get :complete
      get "index", to: "pages#index"
    end
  end
  resources :order_histories, only: %i[index]

  mount Sidekiq::Web, at: '/sidekiq'
end
