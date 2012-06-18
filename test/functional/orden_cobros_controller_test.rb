require 'test_helper'

class OrdenCobrosControllerTest < ActionController::TestCase
  setup do
    @orden_cobro = orden_cobros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_cobros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_cobro" do
    assert_difference('OrdenCobro.count') do
      post :create, orden_cobro: @orden_cobro.attributes
    end

    assert_redirected_to orden_cobro_path(assigns(:orden_cobro))
  end

  test "should show orden_cobro" do
    get :show, id: @orden_cobro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_cobro
    assert_response :success
  end

  test "should update orden_cobro" do
    put :update, id: @orden_cobro, orden_cobro: @orden_cobro.attributes
    assert_redirected_to orden_cobro_path(assigns(:orden_cobro))
  end

  test "should destroy orden_cobro" do
    assert_difference('OrdenCobro.count', -1) do
      delete :destroy, id: @orden_cobro
    end

    assert_redirected_to orden_cobros_path
  end
end
