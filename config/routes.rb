Rails.application.routes.draw do
  resources :posts
  # admin route
  get "/accounts" => 'admin#accounts', as: :accounts


  
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get "/profile/:id" => 'dashboard#profile', as: :profile
  get 'dashboard/properties'
  get 'dashboard/reports'
  resources :properties

  
  # devise scope
  devise_scope :account do
    get 'accounts/sign_out' => "devise/sessions#destroy"
  end
  devise_for :accounts

  post "/agent/message" => "properties#email_agent", as: :email_agent
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'public#main'
end
