# Rails.application.routes.draw do
#   get "links/new"
#   get "links/create"
#   get "topics/new"
#   get "topics/create"
#   get "posts/index"
#   get "posts/show"
#   root "home#index"
  
#   devise_for :users
#   resources :posts
#   resources :comments
#   resources :communities
#   resources :links
#   resources :topics

  
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
#   # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
#   # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

#   # Defines the root path route ("/")
#   # root "posts#index"
# end

Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :posts
  resources :comments
  resources :communities
  resources :links
  resources :topics

  # Sağlık kontrolü (gerekliyse bırak)
  get "up" => "rails/health#show", as: :rails_health_check

  # Eğer PWA kullanıyorsan aşağıdaki satırların yorumunu kaldır:
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
