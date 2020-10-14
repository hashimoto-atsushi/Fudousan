class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
  end

  # GET /apartments/new
  def new
    @apartment = Apartment.new
    2.times{@apartment.stations.build}
  end

  # GET /apartments/1/edit
  def edit
    @apartment.stations.build
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = Apartment.new(apartment_params)
      if @apartment.save
        redirect_to @apartment, notice: 'Apartment was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /apartments/1
  # PATCH/PUT /apartments/1.json
  def update
      if @apartment.update(apartment_params)
        redirect_to @apartment, notice: 'Apartment was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url, notice: 'Apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    def apartment_params
      params.require(:apartment).permit(:property_name, :rent, :address, :age, :note,
      stations_attributes: [:train_line1, :station_name1, :walk_time1])
    end




end
