Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit]
  resources :sessions, only: [:new, :create, :destroy]
  resources :teams, only: [:index, :edit]
  resources :bars, only: [:index, :edit]

  get "/pages/*page" => "pages#show"
end
