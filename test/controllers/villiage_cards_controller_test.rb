require "test_helper"

class VilliageCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @villiage_card = villiage_cards(:one)
  end

  test "should get index" do
    get villiage_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_villiage_card_url
    assert_response :success
  end

  test "should create villiage_card" do
    assert_difference("VilliageCard.count") do
      post villiage_cards_url, params: { villiage_card: {} }
    end

    assert_redirected_to villiage_card_url(VilliageCard.last)
  end

  test "should show villiage_card" do
    get villiage_card_url(@villiage_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_villiage_card_url(@villiage_card)
    assert_response :success
  end

  test "should update villiage_card" do
    patch villiage_card_url(@villiage_card), params: { villiage_card: {} }
    assert_redirected_to villiage_card_url(@villiage_card)
  end

  test "should destroy villiage_card" do
    assert_difference("VilliageCard.count", -1) do
      delete villiage_card_url(@villiage_card)
    end

    assert_redirected_to villiage_cards_url
  end
end
