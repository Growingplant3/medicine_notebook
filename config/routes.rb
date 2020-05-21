Rails.application.routes.draw do
  devise_for :pharmacies, :controllers => {
    registrations: 'pharmacies/registrations',
    sessions: 'pharmacies/sessions'
  }
  devise_scope :pharmacy do
    get 'pharmacies/show/:id' => 'pharmacies/registrations#show', as: :pharmacies_detail
    get 'pharmacies/search' => 'pharmacies/registrations#search'
    delete 'pharmacies/:id' => 'pharmacies/registrations#destroy'
  end
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'users/show' => 'users/registrations#show'
    delete 'users/:id' => 'users/registrations#destroy'
  end
  get '/opinions', to: 'homes#opinion'
  get '/histories', to: 'homes#histroy'
  get '/developer', to: 'homes#develop'
  get '/conditions', to: 'conditions#index'
  get '/conditions/edit', to: 'conditions#edit'
  post '/conditions/create', to: 'conditions#create'
  get '/medicine_notebook/search', to: 'medicine_notebook_records#search'
  get '/medicine_notebook/new', to: 'medicine_notebook_records#new'
  post '/medicine_notebook/new', to: 'medicine_notebook_records#create'
  get '/medicine_notebook/select', to: 'medicine_notebook_records#select'
  get '/medicine_notebook/edit', to: 'medicine_notebook_records#edit'
  post '/medicine_notebook/edit', to: 'medicine_notebook_records#edit'
  root 'homes#index'
end