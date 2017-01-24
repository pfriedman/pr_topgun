Rails.application.routes.draw do
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :sessions, only: [:create, :destroy]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', as: :signout
  get '/dashboard', to: 'dashboard#index', as: :dashboard
end
