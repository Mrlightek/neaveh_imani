require "application_system_test_case"

class TitleDeedCardsTest < ApplicationSystemTestCase
  setup do
    @title_deed_card = title_deed_cards(:one)
  end

  test "visiting the index" do
    visit title_deed_cards_url
    assert_selector "h1", text: "Title deed cards"
  end

  test "should create title deed card" do
    visit title_deed_cards_url
    click_on "New title deed card"

    click_on "Create Title deed card"

    assert_text "Title deed card was successfully created"
    click_on "Back"
  end

  test "should update Title deed card" do
    visit title_deed_card_url(@title_deed_card)
    click_on "Edit this title deed card", match: :first

    click_on "Update Title deed card"

    assert_text "Title deed card was successfully updated"
    click_on "Back"
  end

  test "should destroy Title deed card" do
    visit title_deed_card_url(@title_deed_card)
    click_on "Destroy this title deed card", match: :first

    assert_text "Title deed card was successfully destroyed"
  end
end
