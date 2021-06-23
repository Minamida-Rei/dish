Rails.application.routes.draw do
  root to: 'main#index'
  resources :main, only:[:index]
  resources :dish, only:[:index]
end
