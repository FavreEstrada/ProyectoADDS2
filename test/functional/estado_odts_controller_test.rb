require 'test_helper'

class EstadoOdtsControllerTest < ActionController::TestCase
  setup do
    @estado_odt = estado_odts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_odts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_odt" do
    assert_difference('EstadoOdt.count') do
      post :create, estado_odt: @estado_odt.attributes
    end

    assert_redirected_to estado_odt_path(assigns(:estado_odt))
  end

  test "should show estado_odt" do
    get :show, id: @estado_odt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_odt
    assert_response :success
  end

  test "should update estado_odt" do
    put :update, id: @estado_odt, estado_odt: @estado_odt.attributes
    assert_redirected_to estado_odt_path(assigns(:estado_odt))
  end

  test "should destroy estado_odt" do
    assert_difference('EstadoOdt.count', -1) do
      delete :destroy, id: @estado_odt
    end

    assert_redirected_to estado_odts_path
  end
end
