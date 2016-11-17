class DialerAvaliablesController < ApplicationController

  before_action :set_dialer, only: [:show, :edit, :update, :destroy, :edit_dialer]


  def index
    @dialer = DialerAvaliable.all.active
  end

  def new
     @dialer = DialerAvaliable.new
    render partial: "new_dialer"
  end

  def create
     @dialer = DialerAvaliable.new(dialer_params)

    respond_to do |format|
      if @dialer.save
        format.html { redirect_to dialer_avaliables_path, notice: 'Dialer was successfully created.' }
        format.json { render :show, status: :created, location: @type }
      else
        format.html { render :new }
        format.json { render json: @type.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
     
     respond_to do |format|
      if @dialer.update(dialer_params)
        format.html { redirect_to dialer_avaliables_path, notice: 'Dialer was successfully created.' }
        format.json { render :show, status: :ok, location: @type }
      else
        format.html { render :edit }
        format.json { render json: @type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
     @dialer.destroy
    respond_to do |format|
      format.html { redirect_to dialer_avaliables_path, notice: 'Type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
   def edit_dialer
  
    render partial: "edit_dialer"
  end
  private

   # Use callbacks to share common setup or constraints between actions.
    def set_dialer

      @dialer = DialerAvaliable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dialer_params
      params.fetch(:dialer_avaliable, {}).permit(:name)
    end
end
