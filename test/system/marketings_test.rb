require "application_system_test_case"

class MarketingsTest < ApplicationSystemTestCase
  setup do
    @marketing = marketings(:one)
  end

  test "visiting the index" do
    visit marketings_url
    assert_selector "h1", text: "Marketings"
  end

  test "should create marketing" do
    visit marketings_url
    click_on "New marketing"

    click_on "Create Marketing"

    assert_text "Marketing was successfully created"
    click_on "Back"
  end

  test "should update Marketing" do
    visit marketing_url(@marketing)
    click_on "Edit this marketing", match: :first

    click_on "Update Marketing"

    assert_text "Marketing was successfully updated"
    click_on "Back"
  end

  test "should destroy Marketing" do
    visit marketing_url(@marketing)
    click_on "Destroy this marketing", match: :first

    assert_text "Marketing was successfully destroyed"
  end
end
