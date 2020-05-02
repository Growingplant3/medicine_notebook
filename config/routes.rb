Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/index" => "users#index"
  root 'users#index'
end