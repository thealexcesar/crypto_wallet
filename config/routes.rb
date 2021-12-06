Rails.application.routes.draw do
  resources :coins
  root to:'home#index'
end
