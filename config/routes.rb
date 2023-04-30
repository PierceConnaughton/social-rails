Rails.application.routes.draw do
  devise_for :accounts, :controllers => { :sessions => 'devise/sessions' }, only: [:destroy]
  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile


  resources :posts, only: [:new, :create, :show], controller: 'posts'

  resources :accounts do
    resources :posts
  end
  

  resources :posts

  root to: "public#homepage"
end
