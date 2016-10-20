require 'test_helper'

class UserResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_resource = user_resources(:one)
  end

  test "should get index" do
    get user_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_user_resource_url
    assert_response :success
  end

  test "should create user_resource" do
    assert_difference('UserResource.count') do
      post user_resources_url, params: { user_resource: { url: @user_resource.url, user_id: @user_resource.user_id } }
    end

    assert_redirected_to user_resource_url(UserResource.last)
  end

  test "should show user_resource" do
    get user_resource_url(@user_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_resource_url(@user_resource)
    assert_response :success
  end

  test "should update user_resource" do
    patch user_resource_url(@user_resource), params: { user_resource: { url: @user_resource.url, user_id: @user_resource.user_id } }
    assert_redirected_to user_resource_url(@user_resource)
  end

  test "should destroy user_resource" do
    assert_difference('UserResource.count', -1) do
      delete user_resource_url(@user_resource)
    end

    assert_redirected_to user_resources_url
  end
end
