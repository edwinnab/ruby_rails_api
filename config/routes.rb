 Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #custome routes 
  #http verb, url, controller#action 
  get "products", to: "products#index"

  get "products/:id", to: "products#show"

  post "products", to: "products#create"

  patch "products/:id", to: "products#update"

  delete "products/:id", to: "products#destroy"

  # resource :products, only: [:update]



  # Defines the root path route ("/")
  # root "articles#index"

  #resource: generate 7 routes that follow REST
  # resource :products, only: [:show, :create, :new, :edit, :update]
  
end
