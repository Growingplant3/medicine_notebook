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
    delete 'pharmacies/:id' => 'users/registrations#destroy'
  end
  devise_scope :user do
    get 'users/show' => 'users/registrations#show'
    delete 'users/:id' => 'users/registrations#destroy'
  end
  get '/opinion', to: 'homes#opinion'
  root 'homes#index'
end