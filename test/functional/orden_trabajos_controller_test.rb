require 'test_helper'

class OrdenTrabajosControllerTest < ActionController::TestCase
  setup do
    @orden_trabajo = orden_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_trabajo" do
    assert_difference('OrdenTrabajo.count') do
      post :create, orden_trabajo: @orden_trabajo.attributes
    end

    assert_redirected_to orden_trabajo_path(assigns(:orden_trabajo))
  end

  test "should show orden_trabajo" do
    get :show, id: @orden_trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_trabajo
    assert_response :success
  end

  test "should update orden_trabajo" do
    put :update, id: @orden_trabajo, orden_trabajo: @orden_trabajo.attributes
    assert_redirected_to orden_trabajo_path(assigns(:orden_trabajo))
  end

  test "should destroy orden_trabajo" do
    assert_difference('OrdenTrabajo.count', -1) do
      delete :destroy, id: @orden_trabajo
    end

    assert_redirected_to orden_trabajos_path
  end
end
