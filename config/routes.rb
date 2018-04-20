Rails.application.routes.draw do
  root "pages#show", page: "home"

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
  get "/teams/team_list" => "teams#team_list", as: :team_list
  get "/bars/bar_list" => "bars#bar_list", as: :bar_list
  get "/news/news_list" => "news#news_list", as: :news_list
  get "/news/captains" => "news#captains", as: :captain_news
  get "/news/players" => "news#players", as: :player_news
  get "/news/tournaments" => "news#tournaments", as: :tournament_news


  resources :users, only: [:edit, :update]
  resources :teams, only: [:show, :index, :edit, :update, :new, :create, :destroy]
  resources :bars, only: [:index, :edit, :update, :new, :create, :destroy]
  resources :news, only: [:edit, :update, :new, :create, :destroy]
  resources :memorials, only: [:index, :create, :update, :destroy]

  resources :teams do
    resources :posts, only: [:create]
  end
end
