Rails.application.routes.draw do
  devise_for :users, controller: { registrations: 'registrations' }
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login',  to: 'devise/sessions#new'
  end
  root to: 'toppages#index'
  get '/index', to: 'toppages#index'
  get '/about', to: 'toppages#about'
end
