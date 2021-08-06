class ItemsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def create
    item = Item.new(
      user_id: current_user.id,
      name: params[:name],
      picture: params[:picture],
      upc: params[:upc],
      price: params[:price],
      brand: params[:brand],
      merchant: params[:merchant]
    )
    if item.save
      render json: { message: "Item created successfully." }, status: :created
    else
      render json: { message: "Item was not created." }, status: :bad_request
    end
  end
 
end
