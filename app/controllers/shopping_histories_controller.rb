class ShoppingHistoriesController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def create
    shoppinghistory = ShoppingHistory.new(
      user_id: current_user.id,
      date: params[:date],
      item_id: params[:item_id],
      quantity: params[:quantity]
    )
    if shoppinghistory.save
      render json: { message: "Shopping History created successfully." }, status: :created
    else
      render json: { message: "Shopping History was not created." }, status: :bad_request
    end
  end
end
