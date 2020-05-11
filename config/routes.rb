Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :show, :edit, :destroy] do
	  	member do
	      get :following, :followers
	    end
	end
  resources :followings,       only: [:create, :destroy]
    
  resources :posts
end
