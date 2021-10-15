Rails.application.routes.draw do
  get 'charts/index'
  devise_for :users
  get '/lp', to: 'landing_pages#index'
  root to: 'landing_pages#index'
end
