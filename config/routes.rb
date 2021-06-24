Rails.application.routes.draw do
  root to: 'main#index'
  resources :main, only:[:index, :create, :show]
  resources :dish, only:[:index]
  resources :user_dish, only:[:index]
end
