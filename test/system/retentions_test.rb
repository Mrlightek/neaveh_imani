require "application_system_test_case"

class RetentionsTest < ApplicationSystemTestCase
  setup do
    @retention = retentions(:one)
  end

  test "visiting the index" do
    visit retentions_url
    assert_selector "h1", text: "Retentions"
  end

  test "should create retention" do
    visit retentions_url
    click_on "New retention"

    click_on "Create Retention"

    assert_text "Retention was successfully created"
    click_on "Back"
  end

  test "should update Retention" do
    visit retention_url(@retention)
    click_on "Edit this retention", match: :first

    click_on "Update Retention"

    assert_text "Retention was successfully updated"
    click_on "Back"
  end

  test "should destroy Retention" do
    visit retention_url(@retention)
    click_on "Destroy this retention", match: :first

    assert_text "Retention was successfully destroyed"
  end
end
