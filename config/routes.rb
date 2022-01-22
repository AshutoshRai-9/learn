Rails.application.routes.draw do
devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/new", to: "homes#new"
   post "/create", to: "homes#create"
  get "/index", to: "homes#index"
   get "/show/:id", to: "homes#show"
   get "show/edit/:id", to: "homes#edit"
  post "show/edit/update/:id", to: "homes#update"
#resources :homes

end
