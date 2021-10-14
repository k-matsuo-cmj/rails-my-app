Rails.application.routes.draw do
  devise_for :users
  get '/lp', to: 'landing_pages#index'
  root to: 'landing_pages#index'
end
