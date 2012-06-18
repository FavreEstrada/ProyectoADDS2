require 'test_helper'

class HistorialOctsControllerTest < ActionController::TestCase
  setup do
    @historial_oct = historial_octs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historial_octs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historial_oct" do
    assert_difference('HistorialOct.count') do
      post :create, historial_oct: @historial_oct.attributes
    end

    assert_redirected_to historial_oct_path(assigns(:historial_oct))
  end

  test "should show historial_oct" do
    get :show, id: @historial_oct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historial_oct
    assert_response :success
  end

  test "should update historial_oct" do
    put :update, id: @historial_oct, historial_oct: @historial_oct.attributes
    assert_redirected_to historial_oct_path(assigns(:historial_oct))
  end

  test "should destroy historial_oct" do
    assert_difference('HistorialOct.count', -1) do
      delete :destroy, id: @historial_oct
    end

    assert_redirected_to historial_octs_path
  end
end
