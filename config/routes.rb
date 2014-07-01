Rails.application.routes.draw do
  # root 'chairs#index'

  resources :manufacturers, only: [:index, :show, :create, :new]
  resources :cars, only: [:index, :show, :create, :new]
end
