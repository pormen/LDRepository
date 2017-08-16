class LogbenefitsfinalsController < ApplicationController
  before_action :set_logbenefitsfinal, only: [:show, :edit, :update, :destroy]

  # GET /logbenefitsfinals
  # GET /logbenefitsfinals.json
  def index
    @logbenefitsfinals = Logbenefitsfinal.all
  end

  # GET /logbenefitsfinals/1
  # GET /logbenefitsfinals/1.json
  def show
  end

  # GET /logbenefitsfinals/new
  def new
    @logbenefitsfinal = Logbenefitsfinal.new
  end

  # GET /logbenefitsfinals/1/edit
  def edit
  end

  # POST /logbenefitsfinals
  # POST /logbenefitsfinals.json
  def create
    @logbenefitsfinal = Logbenefitsfinal.new(logbenefitsfinal_params)

    respond_to do |format|
      if @logbenefitsfinal.save
        format.html { redirect_to @logbenefitsfinal, notice: 'Logbenefitsfinal was successfully created.' }
        format.json { render :show, status: :created, location: @logbenefitsfinal }
      else
        format.html { render :new }
        format.json { render json: @logbenefitsfinal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logbenefitsfinals/1
  # PATCH/PUT /logbenefitsfinals/1.json
  def update
    respond_to do |format|
      if @logbenefitsfinal.update(logbenefitsfinal_params)
        format.html { redirect_to @logbenefitsfinal, notice: 'Logbenefitsfinal was successfully updated.' }
        format.json { render :show, status: :ok, location: @logbenefitsfinal }
      else
        format.html { render :edit }
        format.json { render json: @logbenefitsfinal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logbenefitsfinals/1
  # DELETE /logbenefitsfinals/1.json
  def destroy
    @logbenefitsfinal.destroy
    respond_to do |format|
      format.html { redirect_to logbenefitsfinals_url, notice: 'Logbenefitsfinal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logbenefitsfinal
      @logbenefitsfinal = Logbenefitsfinal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logbenefitsfinal_params
      params.require(:logbenefitsfinal).permit(:areabeneficio, :nombrebeneficio, :costoempresa, :costotrabajador, :ruttrabajador, :nombretrabajador, :rutbeneficiario, :nombrebeneficiario, :relacion, :nombreobra)
    end
end
