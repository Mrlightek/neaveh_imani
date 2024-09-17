require "application_system_test_case"

class HumanResourcesTest < ApplicationSystemTestCase
  setup do
    @human_resource = human_resources(:one)
  end

  test "visiting the index" do
    visit human_resources_url
    assert_selector "h1", text: "Human resources"
  end

  test "should create human resource" do
    visit human_resources_url
    click_on "New human resource"

    click_on "Create Human resource"

    assert_text "Human resource was successfully created"
    click_on "Back"
  end

  test "should update Human resource" do
    visit human_resource_url(@human_resource)
    click_on "Edit this human resource", match: :first

    click_on "Update Human resource"

    assert_text "Human resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Human resource" do
    visit human_resource_url(@human_resource)
    click_on "Destroy this human resource", match: :first

    assert_text "Human resource was successfully destroyed"
  end
end
