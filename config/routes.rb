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
  get '/opinion', to: 'homes#opinion'
  get '/history', to: 'homes#histroy'
  get '/condition', to: 'conditions#condition'
  get '/create', to: 'conditions#create'
  root 'homes#index'
end