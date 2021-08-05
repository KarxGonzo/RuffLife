class ItemsController < ApplicationController
  def create
    item = Item.new(
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
