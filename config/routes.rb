Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit, :update]
  resources :teams, only: [:index, :edit, :update]
  resources :bars, only: [:index, :edit, :update]

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', :as => :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', :as => :logout
end
