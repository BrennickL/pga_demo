Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :players, except: [:destroy] do
    resources :games, only: [:index]
  end

  resources :games, except: [:index, :destroy] do
    get 'players', on: :member, action: :game_players
  end
end
