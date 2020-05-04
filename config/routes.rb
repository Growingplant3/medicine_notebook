Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
  end
  get "users/show" => "users#show"
  root 'users#index'
end