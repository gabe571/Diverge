Rails.application.routes.draw do
  devise_for :users
  resources :game_studios
  resources :games do
    resources :reviews
  end
  root to: "games#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
