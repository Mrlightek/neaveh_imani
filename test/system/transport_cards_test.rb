require "application_system_test_case"

class TransportCardsTest < ApplicationSystemTestCase
  setup do
    @transport_card = transport_cards(:one)
  end

  test "visiting the index" do
    visit transport_cards_url
    assert_selector "h1", text: "Transport cards"
  end

  test "should create transport card" do
    visit transport_cards_url
    click_on "New transport card"

    click_on "Create Transport card"

    assert_text "Transport card was successfully created"
    click_on "Back"
  end

  test "should update Transport card" do
    visit transport_card_url(@transport_card)
    click_on "Edit this transport card", match: :first

    click_on "Update Transport card"

    assert_text "Transport card was successfully updated"
    click_on "Back"
  end

  test "should destroy Transport card" do
    visit transport_card_url(@transport_card)
    click_on "Destroy this transport card", match: :first

    assert_text "Transport card was successfully destroyed"
  end
end
