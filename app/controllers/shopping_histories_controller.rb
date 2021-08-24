class ShoppingHistoriesController < ApplicationController
  before_action :authenticate_user, only: [:create, :show, :index]

  def index
    shoppinghistory = ShoppingHistory.where(user_id: current_user.id)
    render json: shoppinghistory
  end

  def create
    if current_user
      shoppinghistory = ShoppingHistory.new(
      user_id: current_user.id,
      date: params[:date],
      item_id: params[:item_id],
      quantity: params[:quantity]
    )
      shoppinghistory.save!
      render json: shoppinghistory.as_json, status: :created
    else
      render json: { message: "Shopping History was not created." }, status: :bad_request
    end
  end

  def show
    shoppinghistory = ShoppingHistory.find_by(id: params[:id])
    render json: shoppinghistory.as_json
  end
end
