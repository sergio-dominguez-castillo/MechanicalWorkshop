Rails.application.routes.draw do
  resources :repairs
  resources :vehicles
  resources :customers

  devise_for :users


  # Contacts
  resources :contacts, only: %i[new create]
  # Paginas estaticas
  get '/home', to: 'pages#home'
  get '/service', to: 'pages#service'
  get '/workinghour', to: 'pages#workinghour'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
end
