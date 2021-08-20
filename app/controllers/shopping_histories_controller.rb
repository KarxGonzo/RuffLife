class ShoppingHistoriesController < ApplicationController
  before_action :authenticate_user, only: [:create, :show, :index]

  def index
    shoppinghistory = ShoppingHistory.all
    render json: shoppinghistory.as_json
  end

  def create
    shoppinghistory = ShoppingHistory.new(
      user_id: User.first.id,
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

  def show
    shoppinghistory = ShoppingHistory.find_by(id: params[:id])
    render json: shoppinghistory.as_json
  end
end
