Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit]
  resources :sessions, only: [:new, :destroy]
  get "/pages/*page" => "pages#show"
  get 'teams/index'
  get 'bars/index'
end
