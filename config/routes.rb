Rails.application.routes.draw do
  resources :movies, only: [:index, :new, :create, :destroy, :show] # Agrega :show aquí
  resources :series, only: [:index, :new, :create, :destroy, :show]
  resources :documentary_films, only: [:index, :new, :create, :destroy, :show]

  root "home#index"
end
