class LogbenefitsController < ApplicationController
  before_action :set_logbenefit, only: [:show, :edit, :update, :destroy]

  # GET /logbenefits
  # GET /logbenefits.json
  def index
    #@logbenefits = Logbenefit.all
    @assignbenefit = Assignbenefit.all

    respond_to do |format|
        format.html
        format.pdf {
          render pdf: "Reporte",
          template: "logbenefits/reporteLog"
        }
          
      
    end

  end

  # GET /logbenefits/1
  # GET /logbenefits/1.json
  def show
  end

  # GET /logbenefits/new
  def new
    @logbenefit = Logbenefit.new
  end

  # GET /logbenefits/1/edit
  def edit
  end

  # POST /logbenefits
  # POST /logbenefits.json
  def create
    @logbenefit = Logbenefit.new(logbenefit_params)

    respond_to do |format|
      if @logbenefit.save
        format.html { redirect_to @logbenefit, notice: 'Logbenefit was successfully created.' }
        format.json { render :show, status: :created, location: @logbenefit }
      else
        format.html { render :new }
        format.json { render json: @logbenefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logbenefits/1
  # PATCH/PUT /logbenefits/1.json
  def update
    respond_to do |format|
      if @logbenefit.update(logbenefit_params)
        format.html { redirect_to @logbenefit, notice: 'Logbenefit was successfully updated.' }
        format.json { render :show, status: :ok, location: @logbenefit }
      else
        format.html { render :edit }
        format.json { render json: @logbenefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logbenefits/1
  # DELETE /logbenefits/1.json
  def destroy
    @logbenefit.destroy
    respond_to do |format|
      format.html { redirect_to logbenefits_url, notice: 'Logbenefit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logbenefit
      @logbenefit = Logbenefit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logbenefit_params
      params.require(:logbenefit).permit(:assignbenefit_id)
    end
end
