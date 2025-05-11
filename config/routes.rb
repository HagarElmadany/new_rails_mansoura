Rails.application.routes.draw do
  resources :users
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  get "/user" => "user#index"

# routes for posts
  get    "/posts"          => "posts#index"  
  get    "/posts/new"      => "posts#new"     
  post   "/posts"          => "posts#create" 
  get    "/posts/:id"      => "posts#show"    
  get    "/posts/:id/edit" => "posts#edit"  
  patch  "/posts/:id"      => "posts#update"  
  put    "/posts/:id"      => "posts#update"  
  delete "/posts/:id"      => "posts#destroy" 

  #routes for users
  get    "/users"          => "users#index"
  get    "/users/new"      => "users#new"
  post   "/users"          => "users#create"
  get    "/users/:id"      => "users#show"
  get    "/users/:id/edit" => "users#edit"
  patch  "/users/:id"      => "users#update"
  put    "/users/:id"      => "users#update"
  delete "/users/:id"      => "users#destroy"



  # root "posts#index"
end
