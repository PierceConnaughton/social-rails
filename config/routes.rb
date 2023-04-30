Rails.application.routes.draw do
  devise_for :accounts, controllers: {
    registrations: 'accounts/registrations',
    sessions: 'devise/sessions'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/dashboard' => 'accounts#index'
  get 'profile/:username' => 'accounts#profile', as: :profile

  resources :posts, only: [:new, :create, :show], controller: 'posts'

  root to: 'public#homepage'

  devise_scope :account do
    get '/accounts/sign_out', to: 'devise/sessions#destroy'
  end
end
