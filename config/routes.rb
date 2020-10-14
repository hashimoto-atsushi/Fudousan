Rails.application.routes.draw do
  root to: 'apartments#index'
  resources :stations
  resources :apartments
end
