class DialerPlansController < ApplicationController

  before_action :set_dialer_plan, only: [:show, :edit, :update, :destroy]

  def index
    @dialer_plan = DialerPlan.all.active
  end

  def new
    @dialer_list =  DialerAvaliable.get_list
    @dialer_plan = current_user.dialer_plans.build

    @count = DialerAvaliable.active.count
    @count.times do |h| 
     
      plan = @dialer_plan.dialer_plan_lists.build(dialer_avaliable_id: @dialer_list.values[h])
    end
  end

  def create

     @dialer_plan = current_user.dialer_plans.new(params.require(:dialer_plan).permit!)

    respond_to do |format|
      if @dialer_plan.save
        format.html { redirect_to dialer_plans_path, notice: 'Dialer Plan was successfully created.' }
        format.json { render :show, status: :created, location: @dialer }
      else
        format.html { render :new }
        format.json { render json: @dialer_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @dialer_list =  DialerAvaliable.get_list

  end

  def update
    respond_to do |format|
      if @dialer_plan.update(params.require(:dialer_plan).permit!)
        format.html { redirect_to dialer_plans_path, notice: 'Dialer Plan was successfully updated.' }
        format.json { render :show, status: :created, location: @dialer_plan }
      else
        format.html { render :edit }
        format.json { render json: @dialer_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dialer_plan.destroy
    respond_to do |format|
     format.html { redirect_to dialer_plans_path, notice: 'Dialer Plan was successfully created.' }
        format.json { render :show, status: :created, location: @dialer }
    end
  end

  def show
    @dialer_list =  DialerAvaliable.get_list
  end


   private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialer_plan
      @dialer_plan = DialerPlan.find(params[:id])
    end



end
