require 'test_helper'

class UsuarioCursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_curso = usuario_cursos(:one)
  end

  test "should get index" do
    get usuario_cursos_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_curso_url
    assert_response :success
  end

  test "should create usuario_curso" do
    assert_difference('UsuarioCurso.count') do
      post usuario_cursos_url, params: {usuario_curso: {usuario_id: @usuario_curso.usuario_id, curso_id: @usuario_curso.curso_id } }
    end

    assert_redirected_to usuario_curso_url(UsuarioCurso.last)
  end

  test "should show usuario_curso" do
    get usuario_curso_url(@usuario_curso)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_curso_url(@usuario_curso)
    assert_response :success
  end

  test "should update usuario_curso" do
    patch usuario_curso_url(@usuario_curso), params: {usuario_curso: {usuario_id: @usuario_curso.usuario_id, curso_id: @usuario_curso.curso_id } }
    assert_redirected_to usuario_curso_url(@usuario_curso)
  end

  test "should destroy usuario_curso" do
    assert_difference('UsuarioCurso.count', -1) do
      delete usuario_curso_url(@usuario_curso)
    end

    assert_redirected_to usuario_cursos_url
  end
end
