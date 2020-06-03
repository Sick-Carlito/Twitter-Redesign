# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: %i[create show destroy] do
    member do
      get :following, :followers
    end
  end
  resources :followings, only: %i[create destroy]

  resources :posts
end
