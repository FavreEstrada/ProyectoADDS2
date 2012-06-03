require 'test_helper'

class IdentificacionsControllerTest < ActionController::TestCase
  setup do
    @identificacion = identificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identificacion" do
    assert_difference('Identificacion.count') do
      post :create, identificacion: @identificacion.attributes
    end

    assert_redirected_to identificacion_path(assigns(:identificacion))
  end

  test "should show identificacion" do
    get :show, id: @identificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identificacion
    assert_response :success
  end

  test "should update identificacion" do
    put :update, id: @identificacion, identificacion: @identificacion.attributes
    assert_redirected_to identificacion_path(assigns(:identificacion))
  end

  test "should destroy identificacion" do
    assert_difference('Identificacion.count', -1) do
      delete :destroy, id: @identificacion
    end

    assert_redirected_to identificacions_path
  end
end
