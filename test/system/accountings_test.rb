require "application_system_test_case"

class AccountingsTest < ApplicationSystemTestCase
  setup do
    @accounting = accountings(:one)
  end

  test "visiting the index" do
    visit accountings_url
    assert_selector "h1", text: "Accountings"
  end

  test "should create accounting" do
    visit accountings_url
    click_on "New accounting"

    click_on "Create Accounting"

    assert_text "Accounting was successfully created"
    click_on "Back"
  end

  test "should update Accounting" do
    visit accounting_url(@accounting)
    click_on "Edit this accounting", match: :first

    click_on "Update Accounting"

    assert_text "Accounting was successfully updated"
    click_on "Back"
  end

  test "should destroy Accounting" do
    visit accounting_url(@accounting)
    click_on "Destroy this accounting", match: :first

    assert_text "Accounting was successfully destroyed"
  end
end
