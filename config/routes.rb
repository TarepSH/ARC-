Rails.application.routes.draw do
  devise_for :users
	root 'teams#index'

  get 'home/index'
  get 'home/about_us'
  
  resources :rounds

resources :teams do
  resources :games
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
