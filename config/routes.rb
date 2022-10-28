Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end

    unauthenticated do
      root 'home#index', as: :unauthenticated_root
    end
  end

  resources :users do
    resources :groups do
      resources :budgets
    end
  end
end
