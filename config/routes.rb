require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => '/sidekiq'

  resources :books, only: %i[index show]

  resources :orders, only: %i[index show]

  # Defines the root path route ("/")
  # root "articles#index"
  root "rails/welcome#index"
end
