# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :instruments, except: %i[new edit]
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  get '/user' => 'users#index'
  get '/users/:id' => 'users#show'
  get '/users/:id' => 'users#show'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
