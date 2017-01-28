Rails.application.routes.draw do
  root "pages#show", page: "home"

  get "/pages/*page" => "pages#show"
  get 'teams/index'
  get 'bars/index'
end
