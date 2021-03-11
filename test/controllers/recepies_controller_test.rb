require 'test_helper'

class RecepiesControllerTest < ActionController::TestCase
  setup do
    @recepy = recepies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recepies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recepy" do
    assert_difference('Recepie.count') do
      post :create, recepy: {  }
    end

    assert_redirected_to recepy_path(assigns(:recepy))
  end

  test "should show recepy" do
    get :show, id: @recepy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recepy
    assert_response :success
  end

  test "should update recepy" do
    patch :update, id: @recepy, recepy: {  }
    assert_redirected_to recepy_path(assigns(:recepy))
  end

  test "should destroy recepy" do
    assert_difference('Recepie.count', -1) do
      delete :destroy, id: @recepy
    end

    assert_redirected_to recepies_path
  end
end
