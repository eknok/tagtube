Rails.application.routes.draw do
  root to: 'toppages#index'
  get '/about', to: 'toppages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
