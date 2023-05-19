Rails.application.routes.draw do
  
  devise_for :accounts
  resources :properties
  # admin route
  get "/accounts" => 'admin#accounts', as: :accounts

  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile

  # devise scope
  devise_scope :account do
    get 'accounts/sign_out' => "devise/sessions#destroy"
  end

  post "/agent/message" => "properties#email_agent", as: :email_agent
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'public#main'
end
