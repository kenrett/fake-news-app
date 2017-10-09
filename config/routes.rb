Rails.application.routes.draw do
  root to: "fakes#index"

  devise_for :users
  resources :fakes

  get "/users/:id" => "users#show", as: 'user'
end
