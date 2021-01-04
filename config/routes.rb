Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/clients', to: "clients#index", as: "clients"

  get '/clients/new', to: "clients#new"

  get '/clients/:id', to: "clients#show", as: "client"

  get '/clients', to: "clients#create"


  get '/appointments/new', to: "appointments#new", as: "new_appointment"

  post '/appointments', to: "appointments#create"

  get '/appointments/:id/edit', to: "appointments#edit", as: "edit_appointment"

  patch '/appointments/:id', to: "appointments#update"

  get '/appointments/:id', to: "appointments#show", as: "appointment"

  delete '/appointments/:id', to: "appointments#destroy", as: "cancel_appointment"

  
  get '/designers', to: "designers#index", as: "designers"
  
  get '/designers/new', to: "designers#new"
  
  get '/designers/:id', to: "designers#show", as: "designer"

  post '/designers', to: "designers#create"
end
