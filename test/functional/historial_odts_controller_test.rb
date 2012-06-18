require 'test_helper'

class HistorialOdtsControllerTest < ActionController::TestCase
  setup do
    @historial_odt = historial_odts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historial_odts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historial_odt" do
    assert_difference('HistorialOdt.count') do
      post :create, historial_odt: @historial_odt.attributes
    end

    assert_redirected_to historial_odt_path(assigns(:historial_odt))
  end

  test "should show historial_odt" do
    get :show, id: @historial_odt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historial_odt
    assert_response :success
  end

  test "should update historial_odt" do
    put :update, id: @historial_odt, historial_odt: @historial_odt.attributes
    assert_redirected_to historial_odt_path(assigns(:historial_odt))
  end

  test "should destroy historial_odt" do
    assert_difference('HistorialOdt.count', -1) do
      delete :destroy, id: @historial_odt
    end

    assert_redirected_to historial_odts_path
  end
end
