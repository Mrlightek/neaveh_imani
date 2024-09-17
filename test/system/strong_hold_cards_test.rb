require "application_system_test_case"

class StrongHoldCardsTest < ApplicationSystemTestCase
  setup do
    @strong_hold_card = strong_hold_cards(:one)
  end

  test "visiting the index" do
    visit strong_hold_cards_url
    assert_selector "h1", text: "Strong hold cards"
  end

  test "should create strong hold card" do
    visit strong_hold_cards_url
    click_on "New strong hold card"

    click_on "Create Strong hold card"

    assert_text "Strong hold card was successfully created"
    click_on "Back"
  end

  test "should update Strong hold card" do
    visit strong_hold_card_url(@strong_hold_card)
    click_on "Edit this strong hold card", match: :first

    click_on "Update Strong hold card"

    assert_text "Strong hold card was successfully updated"
    click_on "Back"
  end

  test "should destroy Strong hold card" do
    visit strong_hold_card_url(@strong_hold_card)
    click_on "Destroy this strong hold card", match: :first

    assert_text "Strong hold card was successfully destroyed"
  end
end
