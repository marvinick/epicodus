require 'test_helper'

class PingpongsControllerTest < ActionController::TestCase
  setup do
    @pingpong = pingpongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pingpongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pingpong" do
    assert_difference('Pingpong.count') do
      post :create, pingpong: { name: @pingpong.name }
    end

    assert_redirected_to pingpong_path(assigns(:pingpong))
  end

  test "should show pingpong" do
    get :show, id: @pingpong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pingpong
    assert_response :success
  end

  test "should update pingpong" do
    patch :update, id: @pingpong, pingpong: { name: @pingpong.name }
    assert_redirected_to pingpong_path(assigns(:pingpong))
  end

  test "should destroy pingpong" do
    assert_difference('Pingpong.count', -1) do
      delete :destroy, id: @pingpong
    end

    assert_redirected_to pingpongs_path
  end
end
