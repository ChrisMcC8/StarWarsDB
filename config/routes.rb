Rails.application.routes.draw do
  get 'pages/show'
  resources :starships
  resources :planets
  resources :species
  resources :characters do
    get '/characters/:character', action: :index, on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end


end
