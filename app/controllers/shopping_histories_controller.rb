class ShoppingHistoriesController < ApplicationController
  def create
    shoppinghistory = ShoppingHistory.new(
      user_id: params[:user_id],
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
