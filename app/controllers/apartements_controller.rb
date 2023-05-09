class ApartementsController < ApplicationController
  before_action :set_apartement, only: %i[ show edit update destroy ]

  # GET /apartements or /apartements.json
  def index
    apartements = Apartement.all
  end

  # GET /apartements/1 or /apartements/1.json
  def show
  end

  # GET /apartements/new
  def new
    apartement = Apartement.new
  end

  # GET /apartements/1/edit
  def edit
  end

  # POST /apartements or /apartements.json
  def create
    apartement = Apartement.new(apartement_params)

    respond_to do |format|
      if apartement.save
        format.html { redirect_to apartement_url(apartement), notice: "Apartement was successfully created." }
        format.json { render :show, status: :created, location: apartement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: apartement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartements/1 or /apartements/1.json
  def update
    respond_to do |format|
      if apartement.update(apartement_params)
        format.html { redirect_to apartement_url(apartement), notice: "Apartement was successfully updated." }
        format.json { render :show, status: :ok, location: apartement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: apartement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartements/1 or /apartements/1.json
  def destroy
    apartement.destroy

    respond_to do |format|
      format.html { redirect_to apartements_url, notice: "Apartement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartement
      apartement = Apartement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartement_params
      params.require(:apartement).permit(:street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pets, :image, :user_id, :description)
    end
end
