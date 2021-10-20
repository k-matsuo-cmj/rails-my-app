Rails.application.routes.draw do
  get 'charts/index'
  devise_for :users
  get '/lp', to: 'landing_pages#index'
  root to: 'receipts#index'
  resources :receipts, only: [:index, :new, :create, :edit, :update, :destroy]
end
