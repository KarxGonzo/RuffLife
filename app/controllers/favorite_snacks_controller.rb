class FavoriteSnacksController < ApplicationController
  before_action :authenticate_user, only: [:create, :index ]

  def index
    favoritesnack = FavoriteSnack.all
    render json: favoritesnack.as_json
  end

  def create
    favoritesnack = FavoriteSnack.new(
      pet_id: params[:pet_id],
      item_id: params[:item_id],
      rating: params[:rating],
    )
    if favoritesnack.save!
      render json: { message: "Favorite Snack created successfully." }, status: :created
    else
      render json: { message: "Favorite Snack was not created." }, status: :bad_request
    end
  end
end

