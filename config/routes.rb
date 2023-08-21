Rails.application.routes.draw do
  root "home#index"
  resources :companies
  resources :jobs

  get"/home" => "home#index"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
