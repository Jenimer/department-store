Rails.application.routes.draw do
  root 'store#index'
  resources :stores
end
