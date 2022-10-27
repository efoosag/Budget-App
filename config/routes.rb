Rails.application.routes.draw do
  # get 'home/index'
  devise_for :users
  get '/users/sign_up' => 'devise/registrations#new'
  root 'home#index'
end
