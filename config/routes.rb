Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'welcome#index'
  get '/aquariums', to: 'aquariums#index'
  # get '/aquariums/new', to: 'aquariums#new'
  # post '/aquariums', to: 'aquariums#create'
  get '/aquariums/:id', to: 'aquariums#show'

  get "/maintenance_logs", to: "maintenance_logs#index"
  get "/maintenance_logs/:id", to: "maintenance_logs#show"

  # post "/maintenancelogs", to: "maintenancelogs#create"
  # get "/maintenancelogs/:id", to: "maintenancelogs#show"
  get "/aquariums/:id/logs", to: "aquarium_maintenance_logs#index"

  # get '/aquariums/:id/edit', to: 'aquariums#edit'
  # patch '/aquariums/:id', to: 'aquariums#update'
  # delete '/aquariums/:id', to: 'aquariums#destroy'
end

