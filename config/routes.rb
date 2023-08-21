Rails.application.routes.draw do
  root "home#index"
  resources :companies
  resources :jobs
  resources :tags
  resources :job_tags

  get"/home" => "home#index"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
