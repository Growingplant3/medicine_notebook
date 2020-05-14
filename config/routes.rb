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
    get 'pharmacies/show' => 'pharmacies/registrations#show'
    get 'pharmacies/search' => 'pharmacies/registrations#search'
    delete 'pharmacies/:id' => 'users/registrations#destroy'
  end
  devise_scope :user do
    get 'users/show' => 'users/registrations#show'
    delete 'users/:id' => 'users/registrations#destroy'
  end
  get '/pharmacies/show/:id', to: 'pharmacies/registrations#show'
  get '/opinions', to: 'homes#opinion'
  get '/histories', to: 'homes#histroy'
  get '/conditions', to: 'conditions#index'
  get '/conditions/edit', to: 'conditions#edit'
  post '/conditions', to: 'conditions#create'
  root 'homes#index'
end