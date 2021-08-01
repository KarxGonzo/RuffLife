class PetsController < ApplicationController
  def create
    pet = Pet.new(
      name: params[:name],
      user_id: params[:user_id],
      picture: params[:picture]
    )
    if pet.save
      render json: { message: "Pet created successfully." }, status: :created
    else
      render json: { message: "Pet was not created." }, status: :bad_request
    end
  end
end
