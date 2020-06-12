Rails.application.routes.draw do
  devise_for :users, skip: %i[registration sessions passwors]
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
end
