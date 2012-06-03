require 'test_helper'

class EstadoPagosControllerTest < ActionController::TestCase
  setup do
    @estado_pago = estado_pagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_pagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_pago" do
    assert_difference('EstadoPago.count') do
      post :create, estado_pago: @estado_pago.attributes
    end

    assert_redirected_to estado_pago_path(assigns(:estado_pago))
  end

  test "should show estado_pago" do
    get :show, id: @estado_pago
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_pago
    assert_response :success
  end

  test "should update estado_pago" do
    put :update, id: @estado_pago, estado_pago: @estado_pago.attributes
    assert_redirected_to estado_pago_path(assigns(:estado_pago))
  end

  test "should destroy estado_pago" do
    assert_difference('EstadoPago.count', -1) do
      delete :destroy, id: @estado_pago
    end

    assert_redirected_to estado_pagos_path
  end
end
