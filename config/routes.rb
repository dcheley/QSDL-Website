Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :users, only: [:edit, :update]
  resources :teams, only: [:index, :edit, :update, :new, :create, :destroy]
  resources :bars, only: [:index, :edit, :update, :new, :create, :destroy]
  resources :news, only: [:index, :edit, :update, :new, :create, :destroy]

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
  get "/teams/team_list" => "teams#team_list"
  get "/bars/bar_list" => "bars#bar_list"
  get "/news/news_list" => "news#news_list"
  get 'delete_team' => "teams#destroy", as: :delete_team
end
