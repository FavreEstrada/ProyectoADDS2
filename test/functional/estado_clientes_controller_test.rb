require 'test_helper'

class EstadoClientesControllerTest < ActionController::TestCase
  setup do
    @estado_cliente = estado_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_cliente" do
    assert_difference('EstadoCliente.count') do
      post :create, estado_cliente: @estado_cliente.attributes
    end

    assert_redirected_to estado_cliente_path(assigns(:estado_cliente))
  end

  test "should show estado_cliente" do
    get :show, id: @estado_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_cliente
    assert_response :success
  end

  test "should update estado_cliente" do
    put :update, id: @estado_cliente, estado_cliente: @estado_cliente.attributes
    assert_redirected_to estado_cliente_path(assigns(:estado_cliente))
  end

  test "should destroy estado_cliente" do
    assert_difference('EstadoCliente.count', -1) do
      delete :destroy, id: @estado_cliente
    end

    assert_redirected_to estado_clientes_path
  end
end
