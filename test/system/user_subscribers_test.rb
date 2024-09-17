require "application_system_test_case"

class UserSubscribersTest < ApplicationSystemTestCase
  setup do
    @user_subscriber = user_subscribers(:one)
  end

  test "visiting the index" do
    visit user_subscribers_url
    assert_selector "h1", text: "User subscribers"
  end

  test "should create user subscriber" do
    visit user_subscribers_url
    click_on "New user subscriber"

    fill_in "From", with: @user_subscriber.from
    fill_in "To", with: @user_subscriber.to
    click_on "Create User subscriber"

    assert_text "User subscriber was successfully created"
    click_on "Back"
  end

  test "should update User subscriber" do
    visit user_subscriber_url(@user_subscriber)
    click_on "Edit this user subscriber", match: :first

    fill_in "From", with: @user_subscriber.from
    fill_in "To", with: @user_subscriber.to
    click_on "Update User subscriber"

    assert_text "User subscriber was successfully updated"
    click_on "Back"
  end

  test "should destroy User subscriber" do
    visit user_subscriber_url(@user_subscriber)
    click_on "Destroy this user subscriber", match: :first

    assert_text "User subscriber was successfully destroyed"
  end
end
