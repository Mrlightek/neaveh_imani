require "test_helper"

class HeartShapeHerbCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heart_shape_herb_card = heart_shape_herb_cards(:one)
  end

  test "should get index" do
    get heart_shape_herb_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_heart_shape_herb_card_url
    assert_response :success
  end

  test "should create heart_shape_herb_card" do
    assert_difference("HeartShapeHerbCard.count") do
      post heart_shape_herb_cards_url, params: { heart_shape_herb_card: {} }
    end

    assert_redirected_to heart_shape_herb_card_url(HeartShapeHerbCard.last)
  end

  test "should show heart_shape_herb_card" do
    get heart_shape_herb_card_url(@heart_shape_herb_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_heart_shape_herb_card_url(@heart_shape_herb_card)
    assert_response :success
  end

  test "should update heart_shape_herb_card" do
    patch heart_shape_herb_card_url(@heart_shape_herb_card), params: { heart_shape_herb_card: {} }
    assert_redirected_to heart_shape_herb_card_url(@heart_shape_herb_card)
  end

  test "should destroy heart_shape_herb_card" do
    assert_difference("HeartShapeHerbCard.count", -1) do
      delete heart_shape_herb_card_url(@heart_shape_herb_card)
    end

    assert_redirected_to heart_shape_herb_cards_url
  end
end
