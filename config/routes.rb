Rails.application.routes.draw do
  resources :messages
  resources :user_subscribers
  resources :user_subscribeds
  resources :collections
  resources :favorites
  resources :downloads
  resources :pages
  resources :topics
  resources :categories
  resources :homes
  resources :application_settings
  resources :profiles
  resources :product_pages
  resources :settings
  resources :mailboxes
  resources :dashboards
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Paypal
resources :payments, only: [:new, :create] do
  collection do
    post :capture
  end
end


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
   root "dashboards#show"

  get 'dashboard/:id', to: 'dashboards#show'
  get 'mailbox/', to: 'mailboxes#index'
  get 'card-dashboard/:id', to: 'dashboards#edit'
  get 'settings', to: 'settings#index'
  get 'payments', to: 'payments#create'
  get 'sign_out', to: "dashboards#sign_out_user"
  get 'profile_edit/:id', to: 'profiles#show'
  #get 'posts', to: 'posts#index'
  #get 'new_post', to: 'posts#new'
  
end
