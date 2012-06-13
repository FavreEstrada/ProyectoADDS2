require 'test_helper'

class ClienteJuridicosControllerTest < ActionController::TestCase
  setup do
    @cliente_juridico = cliente_juridicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_juridicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_juridico" do
    assert_difference('ClienteJuridico.count') do
      post :create, cliente_juridico: @cliente_juridico.attributes
    end

    assert_redirected_to cliente_juridico_path(assigns(:cliente_juridico))
  end

  test "should show cliente_juridico" do
    get :show, id: @cliente_juridico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_juridico
    assert_response :success
  end

  test "should update cliente_juridico" do
    put :update, id: @cliente_juridico, cliente_juridico: @cliente_juridico.attributes
    assert_redirected_to cliente_juridico_path(assigns(:cliente_juridico))
  end

  test "should destroy cliente_juridico" do
    assert_difference('ClienteJuridico.count', -1) do
      delete :destroy, id: @cliente_juridico
    end

    assert_redirected_to cliente_juridicos_path
  end
end
