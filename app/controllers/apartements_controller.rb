class ApartementsController < ApplicationController
  # before_action :set_apartement, only: %i[ show edit update destroy ]


  def index
    apartements = Apartement.all
    render json: apartements
  end

 
  def create
    apartement = Apartement.create(apartement_params)
    if apartement.valid?
      render json: apartement
    else
      render json: apartement.errors, status: 422
    end
  end

  def update
    apartement = Apartement.find(params[:id])
    apartement.update(apartement_params)
    if apartement.valid?
      render json: apartement
    else
      render json: apartement.errors, status: 422
    end
   
  end

  def destroy
    apartement = Apartement.find(params[:id])
    apartement.update(apartement_params)
    if apartement.valid?
      render json: apartement
    else
    render json: apartement.errors, status:422
    end
  end

  private
    def apartement_params
      params.require(:apartement).permit(:street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :user_id, :description)
    end
end
