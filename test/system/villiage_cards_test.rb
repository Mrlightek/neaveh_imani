require "application_system_test_case"

class VilliageCardsTest < ApplicationSystemTestCase
  setup do
    @villiage_card = villiage_cards(:one)
  end

  test "visiting the index" do
    visit villiage_cards_url
    assert_selector "h1", text: "Villiage cards"
  end

  test "should create villiage card" do
    visit villiage_cards_url
    click_on "New villiage card"

    click_on "Create Villiage card"

    assert_text "Villiage card was successfully created"
    click_on "Back"
  end

  test "should update Villiage card" do
    visit villiage_card_url(@villiage_card)
    click_on "Edit this villiage card", match: :first

    click_on "Update Villiage card"

    assert_text "Villiage card was successfully updated"
    click_on "Back"
  end

  test "should destroy Villiage card" do
    visit villiage_card_url(@villiage_card)
    click_on "Destroy this villiage card", match: :first

    assert_text "Villiage card was successfully destroyed"
  end
end
