Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/pets" => "pets#create"
  get "/pets" => "pets#index"
  get "/pets/:id" => "pets#show"
  patch "/pets/:id" => "pets#update"


  post "/shopping_histories" => "shopping_histories#create"
  post "/items" => "items#create"
  post "/favorite_snacks" => "favorite_snacks#create"
end
