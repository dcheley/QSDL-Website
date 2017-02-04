Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit, :update]
  resources :teams
  resources :bars
  resources :news

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
  get "/teams/team_list" => "teams#team_list"
  get "/bars/bar_list" => "bars#bar_list"
  get 'delete_team' => "teams#destroy", as: :delete_team
end
