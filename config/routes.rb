Rails.application.routes.draw do
  get 'pages/show'
  resources :starships
  resources :planets
  resources :species
  resources :characters 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  resources :characters, only: [:index, :show] do
    #characters/search/(:format)
    collection do
        get "search"
      end
    end

  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
    get "planets.name" => "planets#show"
  end


end
