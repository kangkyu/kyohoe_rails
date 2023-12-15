Rails.application.routes.draw do
  use_doorkeeper

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :postings, only: [:new, :create, :show]
  resources :users
  resource :user_session, only: [:new, :create, :destroy]

  get "sign_in", to: "user_sessions#new"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "postings#new"
end
