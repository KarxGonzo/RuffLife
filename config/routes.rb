Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/pets" => "pets#create"
  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
  patch "/pets/:id" => "pets#update"


  post "/shopping_histories" => "shopping_histories#create"
  get "/shopping_histories" => "shopping_histories#index"
  get "/shopping_histories/:id" => "shopping_histories#show"
  
  post "/items" => "items#create"
  get "/items" => "items#index"
  get "/items/:id" => "items#show"

  get "/favorite_snacks" => "favorite_snacks#index"
  post "/favorite_snacks" => "favorite_snacks#create"

end
