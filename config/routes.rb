# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Defines the root path route ("/")
  root to: 'limericks#index'

  post 'limericks', to: 'limericks#create', as: 'limericks'
  get 'limericks/new', to: 'limericks#new', as: 'new_limerick'
  patch 'limericks/:id', to: 'limericks#update', as: 'limerick'
  put 'limericks/:id', to: 'limericks#update'
  delete 'limericks/:id', to: 'limericks#destroy'
  get 'limericks/:id/edit', to: 'limericks#edit', as: 'edit_limerick'

  get 'users/:user_id/limericks', to: 'user_limericks#index', as: 'user_limericks'
end
