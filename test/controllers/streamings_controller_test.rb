require "test_helper"

class StreamingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @streaming = streamings(:one)
  end

  test "should get index" do
    get streamings_url
    assert_response :success
  end

  test "should get new" do
    get new_streaming_url
    assert_response :success
  end

  test "should create streaming" do
    assert_difference("Streaming.count") do
      post streamings_url, params: { streaming: {} }
    end

    assert_redirected_to streaming_url(Streaming.last)
  end

  test "should show streaming" do
    get streaming_url(@streaming)
    assert_response :success
  end

  test "should get edit" do
    get edit_streaming_url(@streaming)
    assert_response :success
  end

  test "should update streaming" do
    patch streaming_url(@streaming), params: { streaming: {} }
    assert_redirected_to streaming_url(@streaming)
  end

  test "should destroy streaming" do
    assert_difference("Streaming.count", -1) do
      delete streaming_url(@streaming)
    end

    assert_redirected_to streamings_url
  end
end
