Rails.application.routes.draw do
  resources :products do
  resources :reviews
  end

  get '/featured', to: 'products#featured'
  get '/seed', to: 'products#seed'

  root 'products#index'
end
