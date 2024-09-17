require "test_helper"

class UserSubscribersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_subscriber = user_subscribers(:one)
  end

  test "should get index" do
    get user_subscribers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_subscriber_url
    assert_response :success
  end

  test "should create user_subscriber" do
    assert_difference("UserSubscriber.count") do
      post user_subscribers_url, params: { user_subscriber: { from: @user_subscriber.from, to: @user_subscriber.to } }
    end

    assert_redirected_to user_subscriber_url(UserSubscriber.last)
  end

  test "should show user_subscriber" do
    get user_subscriber_url(@user_subscriber)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_subscriber_url(@user_subscriber)
    assert_response :success
  end

  test "should update user_subscriber" do
    patch user_subscriber_url(@user_subscriber), params: { user_subscriber: { from: @user_subscriber.from, to: @user_subscriber.to } }
    assert_redirected_to user_subscriber_url(@user_subscriber)
  end

  test "should destroy user_subscriber" do
    assert_difference("UserSubscriber.count", -1) do
      delete user_subscriber_url(@user_subscriber)
    end

    assert_redirected_to user_subscribers_url
  end
end
