Rails.application.routes.draw do
  root "companies#index"
  resources :companies

  resources :jobs


  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
