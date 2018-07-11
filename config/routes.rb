Rails.application.routes.draw do
  resources :tags, only: [:index, :new, :create, :show]
  devise_for :users, controller: { registrations: 'registrations' }
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login',  to: 'devise/sessions#new'
  end
  get '/index', to: 'toppages#index'
  get '/about', to: 'toppages#about'
  root to: 'toppages#index'
end
