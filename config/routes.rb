# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resource :users, only: [:new, :create]
  resources :users
end
