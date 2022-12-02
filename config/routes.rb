Rails.application.routes.draw do
   root "blogs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  "/home", to: "home#index"
  # get "/blogs", to: "blogs#index"
  # get "/blogs/:id" , to: "blogs#show"
  resources :blogs do
  resources :comments
  end
  end
