class V1::PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    pet = Person.where(id: params[:id])
    pet.empty? do
      render json: { status: 404, data: pet }
    end
    render json: { status: 200, data: pet }
  end
end
