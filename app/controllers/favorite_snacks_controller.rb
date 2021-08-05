class FavoriteSnacksController < ApplicationController
  def create
    favoritesnack = FavoriteSnack.new(
      puppy_id: params[:puppy_id],
      item_id: params[:item_id],
      rating: params[:rating],
    )
    if favoritesnack.save
      render json: { message: "Favorite Snack created successfully." }, status: :created
    else
      render json: { message: "Favorite Snack was not created." }, status: :bad_request
    end
  end
end

