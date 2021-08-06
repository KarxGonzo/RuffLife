class PetsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def create
    pet = Pet.new(
      user_id: current_user.id,
      name: params[:name],
      picture: params[:picture]
    )
    if pet.save
      render json: { message: "Pet created successfully." }, status: :created
    else
      render json: { message: "Pet was not created." }, status: :bad_request
    end
  end
end
