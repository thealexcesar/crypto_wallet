Rails.application.routes.draw do
  resources :minings
  resources :coins
  root to:'home#index'
end
