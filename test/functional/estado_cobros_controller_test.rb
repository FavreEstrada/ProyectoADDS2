require 'test_helper'

class EstadoCobrosControllerTest < ActionController::TestCase
  setup do
    @estado_cobro = estado_cobros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_cobros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_cobro" do
    assert_difference('EstadoCobro.count') do
      post :create, estado_cobro: @estado_cobro.attributes
    end

    assert_redirected_to estado_cobro_path(assigns(:estado_cobro))
  end

  test "should show estado_cobro" do
    get :show, id: @estado_cobro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_cobro
    assert_response :success
  end

  test "should update estado_cobro" do
    put :update, id: @estado_cobro, estado_cobro: @estado_cobro.attributes
    assert_redirected_to estado_cobro_path(assigns(:estado_cobro))
  end

  test "should destroy estado_cobro" do
    assert_difference('EstadoCobro.count', -1) do
      delete :destroy, id: @estado_cobro
    end

    assert_redirected_to estado_cobros_path
  end
end
