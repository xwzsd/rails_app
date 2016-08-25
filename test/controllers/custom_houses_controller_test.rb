require 'test_helper'

class CustomHousesControllerTest < ActionController::TestCase
  setup do
    @custom_house = custom_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_house" do
    assert_difference('CustomHouse.count') do
      post :create, custom_house: {  }
    end

    assert_redirected_to custom_house_path(assigns(:custom_house))
  end

  test "should show custom_house" do
    get :show, id: @custom_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_house
    assert_response :success
  end

  test "should update custom_house" do
    patch :update, id: @custom_house, custom_house: {  }
    assert_redirected_to custom_house_path(assigns(:custom_house))
  end

  test "should destroy custom_house" do
    assert_difference('CustomHouse.count', -1) do
      delete :destroy, id: @custom_house
    end

    assert_redirected_to custom_houses_path
  end
end
