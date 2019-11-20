require 'test_helper'

class ProfesorSeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profesor_seccion = profesor_seccions(:one)
  end

  test "should get index" do
    get profesor_seccions_url
    assert_response :success
  end

  test "should get new" do
    get new_profesor_seccion_url
    assert_response :success
  end

  test "should create profesor_seccion" do
    assert_difference('ProfesorSeccion.count') do
      post profesor_seccions_url, params: { profesor_seccion: { profesor_id: @profesor_seccion.profesor_id, seccion_id: @profesor_seccion.seccion_id } }
    end

    assert_redirected_to profesor_seccion_url(ProfesorSeccion.last)
  end

  test "should show profesor_seccion" do
    get profesor_seccion_url(@profesor_seccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_profesor_seccion_url(@profesor_seccion)
    assert_response :success
  end

  test "should update profesor_seccion" do
    patch profesor_seccion_url(@profesor_seccion), params: { profesor_seccion: { profesor_id: @profesor_seccion.profesor_id, seccion_id: @profesor_seccion.seccion_id } }
    assert_redirected_to profesor_seccion_url(@profesor_seccion)
  end

  test "should destroy profesor_seccion" do
    assert_difference('ProfesorSeccion.count', -1) do
      delete profesor_seccion_url(@profesor_seccion)
    end

    assert_redirected_to profesor_seccions_url
  end
end
