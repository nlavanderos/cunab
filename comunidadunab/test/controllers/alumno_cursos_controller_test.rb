require 'test_helper'

class AlumnoCursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno_curso = alumno_cursos(:one)
  end

  test "should get index" do
    get alumno_cursos_url
    assert_response :success
  end

  test "should get new" do
    get new_alumno_curso_url
    assert_response :success
  end

  test "should create alumno_curso" do
    assert_difference('AlumnoCurso.count') do
      post alumno_cursos_url, params: { alumno_curso: { alumno_id: @alumno_curso.alumno_id, curso_id: @alumno_curso.curso_id } }
    end

    assert_redirected_to alumno_curso_url(AlumnoCurso.last)
  end

  test "should show alumno_curso" do
    get alumno_curso_url(@alumno_curso)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumno_curso_url(@alumno_curso)
    assert_response :success
  end

  test "should update alumno_curso" do
    patch alumno_curso_url(@alumno_curso), params: { alumno_curso: { alumno_id: @alumno_curso.alumno_id, curso_id: @alumno_curso.curso_id } }
    assert_redirected_to alumno_curso_url(@alumno_curso)
  end

  test "should destroy alumno_curso" do
    assert_difference('AlumnoCurso.count', -1) do
      delete alumno_curso_url(@alumno_curso)
    end

    assert_redirected_to alumno_cursos_url
  end
end
