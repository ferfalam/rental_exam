class ProteriesController < ApplicationController
  before_action :set_protery, only: %i[ show edit update destroy ]

  def index
    @proteries = Protery.all
  end

  def show
  end

  def new
    @protery = Protery.new
    @protery.railways.build
  end

  def edit
    @protery.railways.build
  end

  def create
    @protery = Protery.new(protery_params)
    if @protery.save
      redirect_to @protery, notice: "Protery was successfully created." 
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @protery.update(protery_params)
        format.html { redirect_to @protery, notice: "Protery was successfully updated." }
        format.json { render :show, status: :ok, location: @protery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @protery.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @protery.destroy
    respond_to do |format|
      format.html { redirect_to proteries_url, notice: "Protery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protery
      @protery = Protery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def protery_params
      params.require(:protery).permit(:property, :rent, :address, :building_age, :remarks, railways_attributes:[:name, :station_name, :time])
    end
end
