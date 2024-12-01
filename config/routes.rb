Rails.application.routes.draw do
  root 'games#new'
  get 'games/new', to: 'games#new'
  post 'games/score', to: 'games#score'
end
