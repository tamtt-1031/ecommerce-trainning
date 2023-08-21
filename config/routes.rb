Rails.application.routes.draw do
  get '/signin', to: 'sessions#new', as: 'sessions'
  post '/signin', to: 'sessions#create'
  delete '/signin', to: 'sessions#destroy'

  get '/signup', to: 'registers#index', as: "signup"
  post '/signup', to: 'registers#create'

  root "home#index"
  # root "sessions#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
