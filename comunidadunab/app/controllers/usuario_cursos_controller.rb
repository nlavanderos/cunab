class UsuarioCursosController < ApplicationController
  before_action :set_usuario_curso, only: [:show, :edit, :update, :destroy]

  # GET /usuario_cursos
  # GET /usuario_cursos.json
  def index
    @usuario_cursos = UsuarioCurso.all
  end

  # GET /usuario_cursos/1
  # GET /usuario_cursos/1.json
  def show
  end

  # GET /usuario_cursos/new
  def new
    @usuario_curso = UsuarioCurso.new
  end

  # GET /usuario_cursos/1/edit
  def edit
  end

  # POST /usuario_cursos
  # POST /usuario_cursos.json
  def create
    @usuario_curso = UsuarioCurso.new(usuario_curso_params)

    respond_to do |format|
      if @usuario_curso.save
        format.html { redirect_to @usuario_curso, notice: 'Usuario curso was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_curso }
      else
        format.html { render :new }
        format.json { render json: @usuario_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_cursos/1
  # PATCH/PUT /usuario_cursos/1.json
  def update
    respond_to do |format|
      if @usuario_curso.update(usuario_curso_params)
        format.html { redirect_to @usuario_curso, notice: 'Usuario curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_curso }
      else
        format.html { render :edit }
        format.json { render json: @usuario_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_cursos/1
  # DELETE /usuario_cursos/1.json
  def destroy
    @usuario_curso.destroy
    respond_to do |format|
      format.html { redirect_to usuario_cursos_url, notice: 'Usuario curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_curso
      @usuario_curso = UsuarioCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_curso_params
      params.require(:usuario_curso).permit(:usuario_id, :curso_id)
    end
end
