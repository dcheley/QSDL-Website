Rails.application.routes.draw do
  root "pages#show", page: "home"

  get "/pages/*page" => "pages#show"
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy', as: :logout
  get "/teams/team_list" => "teams#team_list", as: :team_list
  get "/bars/bar_list" => "bars#bar_list", as: :bar_list
  get "/news/news_list" => "news#news_list", as: :news_list
  get "/merchandise/merchandise_list" => "merchandise#merchandise_list", as: :merchandise_list
  get "/memorials/memorium_list" => "memorials#memorium_list", as: :memorium_list
  get "/news/captains" => "news#captains", as: :captain_news
  get "/news/players" => "news#players", as: :player_news
  get "/news/tournaments" => "news#tournaments", as: :tournament_news

  match '/send_email', to: 'users#send_email', via: 'post'

  resources :teams
  resources :users, only: [:edit, :update]
  resources :bars, only: [:new, :create, :edit, :update, :destroy, :index]
  resources :news, only: [:edit, :update, :new, :create, :destroy]
  resources :merchandise, only: [:new, :create, :edit, :update, :destroy, :index]
  resources :memorials, only: [:new, :create, :edit, :update, :destroy, :index]
  resources :posts, only: [:edit, :update, :destroy]

  resources :teams do
    resources :posts, only: [:create]
  end
end
