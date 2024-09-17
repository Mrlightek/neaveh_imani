require "test_helper"

class KimoyoBeadCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kimoyo_bead_card = kimoyo_bead_cards(:one)
  end

  test "should get index" do
    get kimoyo_bead_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_kimoyo_bead_card_url
    assert_response :success
  end

  test "should create kimoyo_bead_card" do
    assert_difference("KimoyoBeadCard.count") do
      post kimoyo_bead_cards_url, params: { kimoyo_bead_card: {} }
    end

    assert_redirected_to kimoyo_bead_card_url(KimoyoBeadCard.last)
  end

  test "should show kimoyo_bead_card" do
    get kimoyo_bead_card_url(@kimoyo_bead_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_kimoyo_bead_card_url(@kimoyo_bead_card)
    assert_response :success
  end

  test "should update kimoyo_bead_card" do
    patch kimoyo_bead_card_url(@kimoyo_bead_card), params: { kimoyo_bead_card: {} }
    assert_redirected_to kimoyo_bead_card_url(@kimoyo_bead_card)
  end

  test "should destroy kimoyo_bead_card" do
    assert_difference("KimoyoBeadCard.count", -1) do
      delete kimoyo_bead_card_url(@kimoyo_bead_card)
    end

    assert_redirected_to kimoyo_bead_cards_url
  end
end
