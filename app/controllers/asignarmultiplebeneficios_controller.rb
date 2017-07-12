class AsignarmultiplebeneficiosController < ApplicationController
  before_action :set_asignarmultiplebeneficio, only: [:show, :edit, :update, :destroy]

  # GET /asignarmultiplebeneficios
  # GET /asignarmultiplebeneficios.json
  def index
    #@asignarmultiplebeneficios = Asignarmultiplebeneficio.all
    @asignarmultiplebeneficio = Asignarmultiplebeneficio.new
    @trabajadores = Trabajador.all
  end

  # GET /asignarmultiplebeneficios/1
  # GET /asignarmultiplebeneficios/1.json
  def show
  end

  # GET /asignarmultiplebeneficios/new
  def new
    @asignarmultiplebeneficio = Asignarmultiplebeneficio.new
  end

  # GET /asignarmultiplebeneficios/1/edit
  def edit
  end

  # POST /asignarmultiplebeneficios
  # POST /asignarmultiplebeneficios.json
  def create
    @asignarmultiplebeneficio = Asignarmultiplebeneficio.new(asignarmultiplebeneficio_params)

    respond_to do |format|
      if @asignarmultiplebeneficio.save
        format.html { redirect_to @asignarmultiplebeneficio, notice: 'Asignarmultiplebeneficio was successfully created.' }
        format.json { render :show, status: :created, location: @asignarmultiplebeneficio }
      else
        format.html { render :new }
        format.json { render json: @asignarmultiplebeneficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignarmultiplebeneficios/1
  # PATCH/PUT /asignarmultiplebeneficios/1.json
  def update
    respond_to do |format|
      if @asignarmultiplebeneficio.update(asignarmultiplebeneficio_params)
        format.html { redirect_to @asignarmultiplebeneficio, notice: 'Asignarmultiplebeneficio was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignarmultiplebeneficio }
      else
        format.html { render :edit }
        format.json { render json: @asignarmultiplebeneficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignarmultiplebeneficios/1
  # DELETE /asignarmultiplebeneficios/1.json
  def destroy
    @asignarmultiplebeneficio.destroy
    respond_to do |format|
      format.html { redirect_to asignarmultiplebeneficios_url, notice: 'Asignarmultiplebeneficio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignarmultiplebeneficio
      @asignarmultiplebeneficio = Asignarmultiplebeneficio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignarmultiplebeneficio_params
      params.require(:asignarmultiplebeneficio).permit(:trabajador_id, :centrocosto_id, :areabenefit_id, :benefit_id)
    end
end
