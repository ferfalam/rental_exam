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
    valid_railway?
    @protery = Protery.new(protery_params)
    if @protery.save
      redirect_to @protery, notice: "Protery was successfully created." 
    else
      render :new
    end
  end

  def update
    valid_railway?
    if @protery.update(protery_params)
      redirect_to @protery, notice: "Protery was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @protery.destroy
    redirect_to proteries_url, notice: "Protery was successfully destroyed." 
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

  def valid_railway?
    params[:protery][:railways_attributes].each do |key,value| 
      value.each do |v|
         confirm = false if v[1].blank?
      end
      params[:protery][:railways_attributes].delete(key)
    end
  end
end
