Rails.application.routes.draw do
  resources :players
  resources :teams

  get '/danassoccerteam', to: 'players#dana', as: 'danassoccerteam'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
