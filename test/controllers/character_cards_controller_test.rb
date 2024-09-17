require "test_helper"

class CharacterCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_card = character_cards(:one)
  end

  test "should get index" do
    get character_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_character_card_url
    assert_response :success
  end

  test "should create character_card" do
    assert_difference("CharacterCard.count") do
      post character_cards_url, params: { character_card: {} }
    end

    assert_redirected_to character_card_url(CharacterCard.last)
  end

  test "should show character_card" do
    get character_card_url(@character_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_card_url(@character_card)
    assert_response :success
  end

  test "should update character_card" do
    patch character_card_url(@character_card), params: { character_card: {} }
    assert_redirected_to character_card_url(@character_card)
  end

  test "should destroy character_card" do
    assert_difference("CharacterCard.count", -1) do
      delete character_card_url(@character_card)
    end

    assert_redirected_to character_cards_url
  end
end
