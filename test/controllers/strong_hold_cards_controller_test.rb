require "test_helper"

class StrongHoldCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @strong_hold_card = strong_hold_cards(:one)
  end

  test "should get index" do
    get strong_hold_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_strong_hold_card_url
    assert_response :success
  end

  test "should create strong_hold_card" do
    assert_difference("StrongHoldCard.count") do
      post strong_hold_cards_url, params: { strong_hold_card: {} }
    end

    assert_redirected_to strong_hold_card_url(StrongHoldCard.last)
  end

  test "should show strong_hold_card" do
    get strong_hold_card_url(@strong_hold_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_strong_hold_card_url(@strong_hold_card)
    assert_response :success
  end

  test "should update strong_hold_card" do
    patch strong_hold_card_url(@strong_hold_card), params: { strong_hold_card: {} }
    assert_redirected_to strong_hold_card_url(@strong_hold_card)
  end

  test "should destroy strong_hold_card" do
    assert_difference("StrongHoldCard.count", -1) do
      delete strong_hold_card_url(@strong_hold_card)
    end

    assert_redirected_to strong_hold_cards_url
  end
end
