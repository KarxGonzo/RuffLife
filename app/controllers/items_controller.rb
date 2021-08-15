class ItemsController < ApplicationController
  before_action :authenticate_user, only: [:create, :show, :index]

  def index
    item = Item.all
    render json: item.as_json
  end

  def create
    response =  HTTP.get("https://api.upcitemdb.com/prod/trial/lookup?upc=0885909950805")
    p response.parse(:json)
    item = Item.new(
      user_id: current_user.id,
      name: response.parse(:json)['items'][0]['title'],
      picture: response.parse(:json)['items'][0]['images'],
      upc: response.parse(:json)['items'][0]['upc'],
      price: response.parse(:json)['items'][0]['offers'][0]['price'],
      brand: response.parse(:json)['items'][0]['brand'],
      merchant: response.parse(:json)['items'][0]['offers'][0]['merchant'],
    )
    if item.save
     render json: { message: "Item created successfully." }, status: :created
    else
     render json: { message: "Item was not created." }, status: :bad_request
    end
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item.as_json
  end
end
