require "application_system_test_case"

class CustomerServicesTest < ApplicationSystemTestCase
  setup do
    @customer_service = customer_services(:one)
  end

  test "visiting the index" do
    visit customer_services_url
    assert_selector "h1", text: "Customer services"
  end

  test "should create customer service" do
    visit customer_services_url
    click_on "New customer service"

    click_on "Create Customer service"

    assert_text "Customer service was successfully created"
    click_on "Back"
  end

  test "should update Customer service" do
    visit customer_service_url(@customer_service)
    click_on "Edit this customer service", match: :first

    click_on "Update Customer service"

    assert_text "Customer service was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer service" do
    visit customer_service_url(@customer_service)
    click_on "Destroy this customer service", match: :first

    assert_text "Customer service was successfully destroyed"
  end
end
