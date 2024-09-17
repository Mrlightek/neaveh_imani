require "application_system_test_case"

class StreamingsTest < ApplicationSystemTestCase
  setup do
    @streaming = streamings(:one)
  end

  test "visiting the index" do
    visit streamings_url
    assert_selector "h1", text: "Streamings"
  end

  test "should create streaming" do
    visit streamings_url
    click_on "New streaming"

    click_on "Create Streaming"

    assert_text "Streaming was successfully created"
    click_on "Back"
  end

  test "should update Streaming" do
    visit streaming_url(@streaming)
    click_on "Edit this streaming", match: :first

    click_on "Update Streaming"

    assert_text "Streaming was successfully updated"
    click_on "Back"
  end

  test "should destroy Streaming" do
    visit streaming_url(@streaming)
    click_on "Destroy this streaming", match: :first

    assert_text "Streaming was successfully destroyed"
  end
end
