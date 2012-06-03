require 'test_helper'

class PersoneriaControllerTest < ActionController::TestCase
  setup do
    @personerium = personeria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personeria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personerium" do
    assert_difference('Personerium.count') do
      post :create, personerium: @personerium.attributes
    end

    assert_redirected_to personerium_path(assigns(:personerium))
  end

  test "should show personerium" do
    get :show, id: @personerium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personerium
    assert_response :success
  end

  test "should update personerium" do
    put :update, id: @personerium, personerium: @personerium.attributes
    assert_redirected_to personerium_path(assigns(:personerium))
  end

  test "should destroy personerium" do
    assert_difference('Personerium.count', -1) do
      delete :destroy, id: @personerium
    end

    assert_redirected_to personeria_path
  end
end
