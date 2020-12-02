Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :game_studios
  resources :games
  root to: "reviews#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
