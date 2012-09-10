require 'test_helper'

class FolloweesControllerTest < ActionController::TestCase
  setup do
    @followee = followees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:followees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create followee" do
    assert_difference('Followee.count') do
      post :create, followee: { avatar: @followee.avatar, entity: @followee.entity, firstName: @followee.firstName, handle: @followee.handle, lastName: @followee.lastName }
    end

    assert_redirected_to followee_path(assigns(:followee))
  end

  test "should show followee" do
    get :show, id: @followee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @followee
    assert_response :success
  end

  test "should update followee" do
    put :update, id: @followee, followee: { avatar: @followee.avatar, entity: @followee.entity, firstName: @followee.firstName, handle: @followee.handle, lastName: @followee.lastName }
    assert_redirected_to followee_path(assigns(:followee))
  end

  test "should destroy followee" do
    assert_difference('Followee.count', -1) do
      delete :destroy, id: @followee
    end

    assert_redirected_to followees_path
  end
end
