require "application_system_test_case"

class ApplicationSettingsTest < ApplicationSystemTestCase
  setup do
    @application_setting = application_settings(:one)
  end

  test "visiting the index" do
    visit application_settings_url
    assert_selector "h1", text: "Application settings"
  end

  test "should create application setting" do
    visit application_settings_url
    click_on "New application setting"

    fill_in "Company name", with: @application_setting.company_name
    fill_in "Logo location", with: @application_setting.logo_location
    fill_in "Name", with: @application_setting.name
    fill_in "Tag line", with: @application_setting.tag_line
    click_on "Create Application setting"

    assert_text "Application setting was successfully created"
    click_on "Back"
  end

  test "should update Application setting" do
    visit application_setting_url(@application_setting)
    click_on "Edit this application setting", match: :first

    fill_in "Company name", with: @application_setting.company_name
    fill_in "Logo location", with: @application_setting.logo_location
    fill_in "Name", with: @application_setting.name
    fill_in "Tag line", with: @application_setting.tag_line
    click_on "Update Application setting"

    assert_text "Application setting was successfully updated"
    click_on "Back"
  end

  test "should destroy Application setting" do
    visit application_setting_url(@application_setting)
    click_on "Destroy this application setting", match: :first

    assert_text "Application setting was successfully destroyed"
  end
end
