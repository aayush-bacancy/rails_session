Rails.application.routes.draw do
  resources :products
  root "products#index"
  post "products/remove_from_cart/:id", to: "products#remove_from_cart", as: :remove_from_cart
  post "products/add_to_cart/:id", to: "products#add_to_cart", as: :add_to_cart
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end