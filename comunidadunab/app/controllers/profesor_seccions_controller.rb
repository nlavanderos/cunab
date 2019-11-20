class ProfesorSeccionsController < ApplicationController
  before_action :set_profesor_seccion, only: [:show, :edit, :update, :destroy]

  # GET /profesor_seccions
  # GET /profesor_seccions.json
  def index
    @profesor_seccions = ProfesorSeccion.all
  end

  # GET /profesor_seccions/1
  # GET /profesor_seccions/1.json
  def show
  end

  # GET /profesor_seccions/new
  def new
    @profesor_seccion = ProfesorSeccion.new
  end

  # GET /profesor_seccions/1/edit
  def edit
  end

  # POST /profesor_seccions
  # POST /profesor_seccions.json
  def create
    @profesor_seccion = ProfesorSeccion.new(profesor_seccion_params)

    respond_to do |format|
      if @profesor_seccion.save
        format.html { redirect_to @profesor_seccion, notice: 'Profesor seccion was successfully created.' }
        format.json { render :show, status: :created, location: @profesor_seccion }
      else
        format.html { render :new }
        format.json { render json: @profesor_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesor_seccions/1
  # PATCH/PUT /profesor_seccions/1.json
  def update
    respond_to do |format|
      if @profesor_seccion.update(profesor_seccion_params)
        format.html { redirect_to @profesor_seccion, notice: 'Profesor seccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesor_seccion }
      else
        format.html { render :edit }
        format.json { render json: @profesor_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesor_seccions/1
  # DELETE /profesor_seccions/1.json
  def destroy
    @profesor_seccion.destroy
    respond_to do |format|
      format.html { redirect_to profesor_seccions_url, notice: 'Profesor seccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor_seccion
      @profesor_seccion = ProfesorSeccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_seccion_params
      params.require(:profesor_seccion).permit(:profesor_id, :seccion_id)
    end
end
