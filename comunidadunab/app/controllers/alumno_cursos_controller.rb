class AlumnoCursosController < ApplicationController
  before_action :set_alumno_curso, only: [:show, :edit, :update, :destroy]

  # GET /alumno_cursos
  # GET /alumno_cursos.json
  def index
    @alumno_cursos = AlumnoCurso.all
  end

  # GET /alumno_cursos/1
  # GET /alumno_cursos/1.json
  def show
  end

  # GET /alumno_cursos/new
  def new
    @alumno_curso = AlumnoCurso.new
  end

  # GET /alumno_cursos/1/edit
  def edit
  end

  # POST /alumno_cursos
  # POST /alumno_cursos.json
  def create
    @alumno_curso = AlumnoCurso.new(alumno_curso_params)

    respond_to do |format|
      if @alumno_curso.save
        format.html { redirect_to @alumno_curso, notice: 'Alumno curso was successfully created.' }
        format.json { render :show, status: :created, location: @alumno_curso }
      else
        format.html { render :new }
        format.json { render json: @alumno_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumno_cursos/1
  # PATCH/PUT /alumno_cursos/1.json
  def update
    respond_to do |format|
      if @alumno_curso.update(alumno_curso_params)
        format.html { redirect_to @alumno_curso, notice: 'Alumno curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumno_curso }
      else
        format.html { render :edit }
        format.json { render json: @alumno_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumno_cursos/1
  # DELETE /alumno_cursos/1.json
  def destroy
    @alumno_curso.destroy
    respond_to do |format|
      format.html { redirect_to alumno_cursos_url, notice: 'Alumno curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno_curso
      @alumno_curso = AlumnoCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumno_curso_params
      params.require(:alumno_curso).permit(:alumno_id, :curso_id)
    end
end
