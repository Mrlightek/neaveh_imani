require "application_system_test_case"

class HeartShapeHerbCardsTest < ApplicationSystemTestCase
  setup do
    @heart_shape_herb_card = heart_shape_herb_cards(:one)
  end

  test "visiting the index" do
    visit heart_shape_herb_cards_url
    assert_selector "h1", text: "Heart shape herb cards"
  end

  test "should create heart shape herb card" do
    visit heart_shape_herb_cards_url
    click_on "New heart shape herb card"

    click_on "Create Heart shape herb card"

    assert_text "Heart shape herb card was successfully created"
    click_on "Back"
  end

  test "should update Heart shape herb card" do
    visit heart_shape_herb_card_url(@heart_shape_herb_card)
    click_on "Edit this heart shape herb card", match: :first

    click_on "Update Heart shape herb card"

    assert_text "Heart shape herb card was successfully updated"
    click_on "Back"
  end

  test "should destroy Heart shape herb card" do
    visit heart_shape_herb_card_url(@heart_shape_herb_card)
    click_on "Destroy this heart shape herb card", match: :first

    assert_text "Heart shape herb card was successfully destroyed"
  end
end
