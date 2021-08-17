class PetsController < ApplicationController
  before_action :authenticate_user, only: [:create, :show, :index, :update]

  def index
    if current_user 
      pet = current_user.pets
      render json: pet.as_json
    else
      render json: { message: "Please sign-in."}
    end
  end

  def create
    if current_user
      pet = Pet.new(
        user_id: current_user.id,
        name: params[:name],
        picture: params[:picture]
    )
      pet.save
      render json: pet.as_json, status: :created
    else
      render json: { message: "Pet was not created." }, status: :bad_request
    end
  end

  def show
    pet = Pet.find_by(id: params[:id])
    render json: pet.as_json
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.name = params[:name]
    pet.picture = params[:picture]
    pet.save
    render json: pet.as_json
  end
end
