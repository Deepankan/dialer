class CountriesController < ApplicationController
	include GeneralQuery
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  def index
  	@countries = Country.all.active
 
  end

  def new
     @country = Country.new
    1.times do 
      state = @country.states.build
      1.times do 

        city = state.cities.build
      end
    end
  end

  def create
    @country = Country.new(params.require(:country).permit!)

    respond_to do |format|
      if @country.save
        format.html { redirect_to countries_path, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @country.update(params.require(:country).permit!)
        format.html { redirect_to countries_path, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_path, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end


end
