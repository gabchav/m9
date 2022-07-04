Rails.application.routes.draw do
  devise_for :users
  get '/tv_shows', to: 'tv_shows#index'
  get '/welcome', to: 'tv_shows#welcome'
  root 'tv_shows#welcome'
  resources :tv_shows do
    resources :episodes
    get 'search', on: :collection
    resources :actors, only: [:new, :create]
    get 'about', on: :member
  end
end