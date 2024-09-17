require "test_helper"

class DatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dating = datings(:one)
  end

  test "should get index" do
    get datings_url
    assert_response :success
  end

  test "should get new" do
    get new_dating_url
    assert_response :success
  end

  test "should create dating" do
    assert_difference("Dating.count") do
      post datings_url, params: { dating: {} }
    end

    assert_redirected_to dating_url(Dating.last)
  end

  test "should show dating" do
    get dating_url(@dating)
    assert_response :success
  end

  test "should get edit" do
    get edit_dating_url(@dating)
    assert_response :success
  end

  test "should update dating" do
    patch dating_url(@dating), params: { dating: {} }
    assert_redirected_to dating_url(@dating)
  end

  test "should destroy dating" do
    assert_difference("Dating.count", -1) do
      delete dating_url(@dating)
    end

    assert_redirected_to datings_url
  end
end
