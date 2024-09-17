require "application_system_test_case"

class MoneyPacksTest < ApplicationSystemTestCase
  setup do
    @money_pack = money_packs(:one)
  end

  test "visiting the index" do
    visit money_packs_url
    assert_selector "h1", text: "Money packs"
  end

  test "should create money pack" do
    visit money_packs_url
    click_on "New money pack"

    click_on "Create Money pack"

    assert_text "Money pack was successfully created"
    click_on "Back"
  end

  test "should update Money pack" do
    visit money_pack_url(@money_pack)
    click_on "Edit this money pack", match: :first

    click_on "Update Money pack"

    assert_text "Money pack was successfully updated"
    click_on "Back"
  end

  test "should destroy Money pack" do
    visit money_pack_url(@money_pack)
    click_on "Destroy this money pack", match: :first

    assert_text "Money pack was successfully destroyed"
  end
end
