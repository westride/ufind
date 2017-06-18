Rails.application.routes.draw do
  root "users#index"
  devise_for :logins
  resources :users
end
