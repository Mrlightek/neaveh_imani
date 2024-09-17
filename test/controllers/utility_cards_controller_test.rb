require "test_helper"

class UtilityCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utility_card = utility_cards(:one)
  end

  test "should get index" do
    get utility_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_utility_card_url
    assert_response :success
  end

  test "should create utility_card" do
    assert_difference("UtilityCard.count") do
      post utility_cards_url, params: { utility_card: {} }
    end

    assert_redirected_to utility_card_url(UtilityCard.last)
  end

  test "should show utility_card" do
    get utility_card_url(@utility_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_utility_card_url(@utility_card)
    assert_response :success
  end

  test "should update utility_card" do
    patch utility_card_url(@utility_card), params: { utility_card: {} }
    assert_redirected_to utility_card_url(@utility_card)
  end

  test "should destroy utility_card" do
    assert_difference("UtilityCard.count", -1) do
      delete utility_card_url(@utility_card)
    end

    assert_redirected_to utility_cards_url
  end
end
