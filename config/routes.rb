Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'pokemons/:id', to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/:id/damage', to: 'pokemons#damage', as: 'damage'
  get 'pokemons/new', to: 'pokemons#new', as: 'new'
  post 'pokemons', to: 'pokemons#create', as: 'create'
end
