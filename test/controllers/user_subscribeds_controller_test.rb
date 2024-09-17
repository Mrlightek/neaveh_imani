require "test_helper"

class UserSubscribedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_subscribed = user_subscribeds(:one)
  end

  test "should get index" do
    get user_subscribeds_url
    assert_response :success
  end

  test "should get new" do
    get new_user_subscribed_url
    assert_response :success
  end

  test "should create user_subscribed" do
    assert_difference("UserSubscribed.count") do
      post user_subscribeds_url, params: { user_subscribed: { from: @user_subscribed.from, to: @user_subscribed.to } }
    end

    assert_redirected_to user_subscribed_url(UserSubscribed.last)
  end

  test "should show user_subscribed" do
    get user_subscribed_url(@user_subscribed)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_subscribed_url(@user_subscribed)
    assert_response :success
  end

  test "should update user_subscribed" do
    patch user_subscribed_url(@user_subscribed), params: { user_subscribed: { from: @user_subscribed.from, to: @user_subscribed.to } }
    assert_redirected_to user_subscribed_url(@user_subscribed)
  end

  test "should destroy user_subscribed" do
    assert_difference("UserSubscribed.count", -1) do
      delete user_subscribed_url(@user_subscribed)
    end

    assert_redirected_to user_subscribeds_url
  end
end
