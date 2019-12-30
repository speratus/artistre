Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists, except: [:index, :delete] do
    resources :sessions, except: [:index]
  end

  resources :studios, only: [:index, :show] do
    resources :sessions, only: [:show]
  end

end
