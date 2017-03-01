Rails.application.routes.draw do

  resources :rounds

  get 'home/index'

resources :teams do
  resources :games
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
