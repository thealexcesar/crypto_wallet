Rails.application.routes.draw do
  
  resources :mining_types
  root 'home#index'
  
  resources :coins
  
end
