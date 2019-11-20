class CursoSeccionsController < ApplicationController
  before_action :set_curso_seccion, only: [:show, :edit, :update, :destroy]

  # GET /curso_seccions
  # GET /curso_seccions.json
  def index
    @curso_seccions = CursoSeccion.all
  end

  # GET /curso_seccions/1
  # GET /curso_seccions/1.json
  def show
  end

  # GET /curso_seccions/new
  def new
    @curso_seccion = CursoSeccion.new
  end

  # GET /curso_seccions/1/edit
  def edit
  end

  # POST /curso_seccions
  # POST /curso_seccions.json
  def create
    @curso_seccion = CursoSeccion.new(curso_seccion_params)

    respond_to do |format|
      if @curso_seccion.save
        format.html { redirect_to @curso_seccion, notice: 'Curso seccion was successfully created.' }
        format.json { render :show, status: :created, location: @curso_seccion }
      else
        format.html { render :new }
        format.json { render json: @curso_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_seccions/1
  # PATCH/PUT /curso_seccions/1.json
  def update
    respond_to do |format|
      if @curso_seccion.update(curso_seccion_params)
        format.html { redirect_to @curso_seccion, notice: 'Curso seccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso_seccion }
      else
        format.html { render :edit }
        format.json { render json: @curso_seccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_seccions/1
  # DELETE /curso_seccions/1.json
  def destroy
    @curso_seccion.destroy
    respond_to do |format|
      format.html { redirect_to curso_seccions_url, notice: 'Curso seccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_seccion
      @curso_seccion = CursoSeccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_seccion_params
      params.require(:curso_seccion).permit(:curso_id, :seccion_id)
    end
end
