require "test_helper"

class RetentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retention = retentions(:one)
  end

  test "should get index" do
    get retentions_url
    assert_response :success
  end

  test "should get new" do
    get new_retention_url
    assert_response :success
  end

  test "should create retention" do
    assert_difference("Retention.count") do
      post retentions_url, params: { retention: {} }
    end

    assert_redirected_to retention_url(Retention.last)
  end

  test "should show retention" do
    get retention_url(@retention)
    assert_response :success
  end

  test "should get edit" do
    get edit_retention_url(@retention)
    assert_response :success
  end

  test "should update retention" do
    patch retention_url(@retention), params: { retention: {} }
    assert_redirected_to retention_url(@retention)
  end

  test "should destroy retention" do
    assert_difference("Retention.count", -1) do
      delete retention_url(@retention)
    end

    assert_redirected_to retentions_url
  end
end
