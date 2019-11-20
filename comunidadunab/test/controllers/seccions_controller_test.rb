require 'test_helper'

class SeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seccion = seccions(:one)
  end

  test "should get index" do
    get seccions_url
    assert_response :success
  end

  test "should get new" do
    get new_seccion_url
    assert_response :success
  end

  test "should create seccion" do
    assert_difference('Seccion.count') do
      post seccions_url, params: { seccion: { id: @seccion.id, seccion: @seccion.seccion } }
    end

    assert_redirected_to seccion_url(Seccion.last)
  end

  test "should show seccion" do
    get seccion_url(@seccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_seccion_url(@seccion)
    assert_response :success
  end

  test "should update seccion" do
    patch seccion_url(@seccion), params: { seccion: { id: @seccion.id, seccion: @seccion.seccion } }
    assert_redirected_to seccion_url(@seccion)
  end

  test "should destroy seccion" do
    assert_difference('Seccion.count', -1) do
      delete seccion_url(@seccion)
    end

    assert_redirected_to seccions_url
  end
end
