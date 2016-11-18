class DialerPricesController < ApplicationController
  before_action :set_dialer_price, only: [:show, :edit, :update, :destroy, :edit_dialer_prices]

  # GET /dialer_prices
  # GET /dialer_prices.json
  def index
    @dialer_prices = DialerPrice.all
  end

  # GET /dialer_prices/1
  # GET /dialer_prices/1.json
  def show
  end

  # GET /dialer_prices/new
  def new
    @dialer_price = DialerPrice.new
    render partial: "new_dialer_prices"
  end

  # GET /dialer_prices/1/edit
  def edit
  end

  def edit_dialer_prices
    render partial: "edit_dialer_prices"
  end

  # POST /dialer_prices
  # POST /dialer_prices.json
  def create
    @dialer_price = DialerPrice.new(dialer_price_params)

    respond_to do |format|
      if @dialer_price.save
        format.html { redirect_to dialer_prices_path, notice: 'Dialer price was successfully created.' }
        format.json { render :show, status: :created, location: dialer_prices_path }
      else
        format.html { render :new }
        format.json { render json: @dialer_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dialer_prices/1
  # PATCH/PUT /dialer_prices/1.json
  def update
    respond_to do |format|
      if @dialer_price.update(dialer_price_params)
        format.html { redirect_to dialer_prices_path, notice: 'Dialer price was successfully updated.' }
        format.json { render :show, status: :ok, location: dialer_prices_path }
      else
        format.html { render :edit }
        format.json { render json: @dialer_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dialer_prices/1
  # DELETE /dialer_prices/1.json
  def destroy
    @dialer_price.destroy
    respond_to do |format|
      format.html { redirect_to dialer_prices_url, notice: 'Dialer price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialer_price
      @dialer_price = DialerPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dialer_price_params
      params.require(:dialer_price).permit(:name)
    end
end
