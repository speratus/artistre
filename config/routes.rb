Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists, except: [:index, :destroy] do
    resources :sessions, except: [:index]
  end

  resources :studios, only: [:index, :show] do
    resources :sessions, only: [:show]
  end

  get '/login/', to: 'logins#new'
  post '/login/', to: 'logins#create'
end
