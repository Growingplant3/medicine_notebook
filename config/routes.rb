Rails.application.routes.draw do
  devise_for :pharmacies, :controllers => {
    registrations: 'pharmacies/registrations',
    sessions: 'pharmacies/sessions'
  }
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'users/show' => 'users/registrations#show'
  end
  get "pharmacies/show" => "pharmacies#show"
  root 'users#index'
end