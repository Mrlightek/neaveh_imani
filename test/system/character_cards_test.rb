require "application_system_test_case"

class CharacterCardsTest < ApplicationSystemTestCase
  setup do
    @character_card = character_cards(:one)
  end

  test "visiting the index" do
    visit character_cards_url
    assert_selector "h1", text: "Character cards"
  end

  test "should create character card" do
    visit character_cards_url
    click_on "New character card"

    click_on "Create Character card"

    assert_text "Character card was successfully created"
    click_on "Back"
  end

  test "should update Character card" do
    visit character_card_url(@character_card)
    click_on "Edit this character card", match: :first

    click_on "Update Character card"

    assert_text "Character card was successfully updated"
    click_on "Back"
  end

  test "should destroy Character card" do
    visit character_card_url(@character_card)
    click_on "Destroy this character card", match: :first

    assert_text "Character card was successfully destroyed"
  end
end
