Rails.application.routes.draw do
  resources :players
  resources :positions
  root "players#index"
end
