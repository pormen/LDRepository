class AtencionsocialsController < ApplicationController
  before_action :set_atencionsocial, only: [:show, :edit, :update, :destroy]

  # GET /atencionsocials
  # GET /atencionsocials.json
  def index
    @atencionsocials = Atencionsocial.all
  end

  # GET /atencionsocials/1
  # GET /atencionsocials/1.json
  def show
  end

  # GET /atencionsocials/new
  def new
    @atencionsocial = Atencionsocial.new
  end

  # GET /atencionsocials/1/edit
  def edit
  end

  # POST /atencionsocials
  # POST /atencionsocials.json
  def create
    @atencionsocial = Atencionsocial.new(atencionsocial_params)

    respond_to do |format|
      if @atencionsocial.save
        format.html { redirect_to @atencionsocial, notice: 'Atencionsocial was successfully created.' }
        format.json { render :show, status: :created, location: @atencionsocial }
      else
        format.html { render :new }
        format.json { render json: @atencionsocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atencionsocials/1
  # PATCH/PUT /atencionsocials/1.json
  def update
    respond_to do |format|
      if @atencionsocial.update(atencionsocial_params)
        format.html { redirect_to @atencionsocial, notice: 'Atencionsocial was successfully updated.' }
        format.json { render :show, status: :ok, location: @atencionsocial }
      else
        format.html { render :edit }
        format.json { render json: @atencionsocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atencionsocials/1
  # DELETE /atencionsocials/1.json
  def destroy
    @atencionsocial.destroy
    respond_to do |format|
      format.html { redirect_to atencionsocials_url, notice: 'Atencionsocial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atencionsocial
      @atencionsocial = Atencionsocial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atencionsocial_params
      params.require(:atencionsocial).permit(:nombre, :apellidopaterno, :apellidomaterno, :rut, :fecha, :tipoconsulta, :benefit_id, :estado, :subcontrato, :obra, :telefono, :atencion, :supervisor, :descripcion)
    end
end
