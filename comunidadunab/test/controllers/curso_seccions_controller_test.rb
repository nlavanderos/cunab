require 'test_helper'

class CursoSeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso_seccion = curso_seccions(:one)
  end

  test "should get index" do
    get curso_seccions_url
    assert_response :success
  end

  test "should get new" do
    get new_curso_seccion_url
    assert_response :success
  end

  test "should create curso_seccion" do
    assert_difference('CursoSeccion.count') do
      post curso_seccions_url, params: { curso_seccion: { curso_id: @curso_seccion.curso_id, seccion_id: @curso_seccion.seccion_id } }
    end

    assert_redirected_to curso_seccion_url(CursoSeccion.last)
  end

  test "should show curso_seccion" do
    get curso_seccion_url(@curso_seccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_curso_seccion_url(@curso_seccion)
    assert_response :success
  end

  test "should update curso_seccion" do
    patch curso_seccion_url(@curso_seccion), params: { curso_seccion: { curso_id: @curso_seccion.curso_id, seccion_id: @curso_seccion.seccion_id } }
    assert_redirected_to curso_seccion_url(@curso_seccion)
  end

  test "should destroy curso_seccion" do
    assert_difference('CursoSeccion.count', -1) do
      delete curso_seccion_url(@curso_seccion)
    end

    assert_redirected_to curso_seccions_url
  end
end
