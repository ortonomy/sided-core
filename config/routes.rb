Rails.application.routes.draw do
  resources :game_events
  resources :reactions
  resources :actions
  resources :meetings
  resources :users
  resources :game_sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
