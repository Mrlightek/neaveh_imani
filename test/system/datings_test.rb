require "application_system_test_case"

class DatingsTest < ApplicationSystemTestCase
  setup do
    @dating = datings(:one)
  end

  test "visiting the index" do
    visit datings_url
    assert_selector "h1", text: "Datings"
  end

  test "should create dating" do
    visit datings_url
    click_on "New dating"

    click_on "Create Dating"

    assert_text "Dating was successfully created"
    click_on "Back"
  end

  test "should update Dating" do
    visit dating_url(@dating)
    click_on "Edit this dating", match: :first

    click_on "Update Dating"

    assert_text "Dating was successfully updated"
    click_on "Back"
  end

  test "should destroy Dating" do
    visit dating_url(@dating)
    click_on "Destroy this dating", match: :first

    assert_text "Dating was successfully destroyed"
  end
end
