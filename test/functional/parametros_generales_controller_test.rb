require 'test_helper'

class ParametrosGeneralesControllerTest < ActionController::TestCase
  setup do
    @parametros_generale = parametros_generales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parametros_generales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parametros_generale" do
    assert_difference('ParametrosGenerale.count') do
      post :create, parametros_generale: @parametros_generale.attributes
    end

    assert_redirected_to parametros_generale_path(assigns(:parametros_generale))
  end

  test "should show parametros_generale" do
    get :show, id: @parametros_generale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parametros_generale
    assert_response :success
  end

  test "should update parametros_generale" do
    put :update, id: @parametros_generale, parametros_generale: @parametros_generale.attributes
    assert_redirected_to parametros_generale_path(assigns(:parametros_generale))
  end

  test "should destroy parametros_generale" do
    assert_difference('ParametrosGenerale.count', -1) do
      delete :destroy, id: @parametros_generale
    end

    assert_redirected_to parametros_generales_path
  end
end
