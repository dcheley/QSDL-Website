Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit]
  resources :teams, only: [:index, :edit]
  resources :bars, only: [:index, :edit]

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', :as => :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', :as => :logout
end
