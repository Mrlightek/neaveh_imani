require "application_system_test_case"

class KimoyoBeadCardsTest < ApplicationSystemTestCase
  setup do
    @kimoyo_bead_card = kimoyo_bead_cards(:one)
  end

  test "visiting the index" do
    visit kimoyo_bead_cards_url
    assert_selector "h1", text: "Kimoyo bead cards"
  end

  test "should create kimoyo bead card" do
    visit kimoyo_bead_cards_url
    click_on "New kimoyo bead card"

    click_on "Create Kimoyo bead card"

    assert_text "Kimoyo bead card was successfully created"
    click_on "Back"
  end

  test "should update Kimoyo bead card" do
    visit kimoyo_bead_card_url(@kimoyo_bead_card)
    click_on "Edit this kimoyo bead card", match: :first

    click_on "Update Kimoyo bead card"

    assert_text "Kimoyo bead card was successfully updated"
    click_on "Back"
  end

  test "should destroy Kimoyo bead card" do
    visit kimoyo_bead_card_url(@kimoyo_bead_card)
    click_on "Destroy this kimoyo bead card", match: :first

    assert_text "Kimoyo bead card was successfully destroyed"
  end
end
