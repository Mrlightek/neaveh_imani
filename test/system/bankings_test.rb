require "application_system_test_case"

class BankingsTest < ApplicationSystemTestCase
  setup do
    @banking = bankings(:one)
  end

  test "visiting the index" do
    visit bankings_url
    assert_selector "h1", text: "Bankings"
  end

  test "should create banking" do
    visit bankings_url
    click_on "New banking"

    click_on "Create Banking"

    assert_text "Banking was successfully created"
    click_on "Back"
  end

  test "should update Banking" do
    visit banking_url(@banking)
    click_on "Edit this banking", match: :first

    click_on "Update Banking"

    assert_text "Banking was successfully updated"
    click_on "Back"
  end

  test "should destroy Banking" do
    visit banking_url(@banking)
    click_on "Destroy this banking", match: :first

    assert_text "Banking was successfully destroyed"
  end
end
