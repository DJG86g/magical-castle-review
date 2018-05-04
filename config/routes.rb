Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'parks#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :parks do
    resources :rides
  end

  resources :rides do
    resources :reviews
  end

  namespace :api do
    namespace :v1 do
      resources :rides, only: [:index, :show] do
        resources :reviews, only: [:index, :show]
      end
    end
  end

end
