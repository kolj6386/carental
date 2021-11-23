Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[show edit update destroy index] do
    resources :bookings_reviews, only: %i[create]
  end
end
