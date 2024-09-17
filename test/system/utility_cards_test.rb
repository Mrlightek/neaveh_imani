require "application_system_test_case"

class UtilityCardsTest < ApplicationSystemTestCase
  setup do
    @utility_card = utility_cards(:one)
  end

  test "visiting the index" do
    visit utility_cards_url
    assert_selector "h1", text: "Utility cards"
  end

  test "should create utility card" do
    visit utility_cards_url
    click_on "New utility card"

    click_on "Create Utility card"

    assert_text "Utility card was successfully created"
    click_on "Back"
  end

  test "should update Utility card" do
    visit utility_card_url(@utility_card)
    click_on "Edit this utility card", match: :first

    click_on "Update Utility card"

    assert_text "Utility card was successfully updated"
    click_on "Back"
  end

  test "should destroy Utility card" do
    visit utility_card_url(@utility_card)
    click_on "Destroy this utility card", match: :first

    assert_text "Utility card was successfully destroyed"
  end
end
