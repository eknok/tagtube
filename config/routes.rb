Rails.application.routes.draw do
  root to: 'toppages#index'
  get '/about', to: 'toppages#about'
end
