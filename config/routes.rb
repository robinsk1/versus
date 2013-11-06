Versus::Application.routes.draw do
  resources :comparisons do 
    resources :opponents
  end
  

  devise_for :users
  resources :users

  authenticated :user do
    root :to => 'home#index'
  end

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  root :to => "home#index"
end