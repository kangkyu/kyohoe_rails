Rails.application.routes.draw do
  use_doorkeeper

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :postings, only: [:new, :create, :show]
  resources :users
  resources :user_session

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "postings#new"
end
