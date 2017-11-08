Rails.application.routes.draw do
  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :show, :new, :create] do
    member do                             # member => restaurant id in URL
      get 'reviews'
    end

    resources :reviews, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
