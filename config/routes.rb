Rails.application.routes.draw do
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"

  get "/articles", to: "articles#index"

  get 'about', to: "articles#about"

  resources :articles, only: [:show]
end
