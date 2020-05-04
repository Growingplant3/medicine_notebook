Rails.application.routes.draw do
  devise_for :pharmacies, :controllers => {
    registrations: 'pharmacies/registrations',
    sessions: 'pharmacies/sessions'
  }
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :pharmacy do
    get "sign_in", :to => "pharmacies/sessions#new"
    get "sign_out", :to => "pharmacies/sessions#destroy" 
    get "user/:id", :to => "pharmacies/registrations#detail"
    get "signup", :to => "pharmacies/registrations#new"
  end
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
  end
  get "pharmacies/show" => "pharmacies#show"
  get "users/show" => "users#show"
  root 'users#index'
end