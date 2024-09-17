require "application_system_test_case"

class ClosetsTest < ApplicationSystemTestCase
  setup do
    @closet = closets(:one)
  end

  test "visiting the index" do
    visit closets_url
    assert_selector "h1", text: "Closets"
  end

  test "should create closet" do
    visit closets_url
    click_on "New closet"

    click_on "Create Closet"

    assert_text "Closet was successfully created"
    click_on "Back"
  end

  test "should update Closet" do
    visit closet_url(@closet)
    click_on "Edit this closet", match: :first

    click_on "Update Closet"

    assert_text "Closet was successfully updated"
    click_on "Back"
  end

  test "should destroy Closet" do
    visit closet_url(@closet)
    click_on "Destroy this closet", match: :first

    assert_text "Closet was successfully destroyed"
  end
end
