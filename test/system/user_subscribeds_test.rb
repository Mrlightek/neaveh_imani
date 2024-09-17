require "application_system_test_case"

class UserSubscribedsTest < ApplicationSystemTestCase
  setup do
    @user_subscribed = user_subscribeds(:one)
  end

  test "visiting the index" do
    visit user_subscribeds_url
    assert_selector "h1", text: "User subscribeds"
  end

  test "should create user subscribed" do
    visit user_subscribeds_url
    click_on "New user subscribed"

    fill_in "From", with: @user_subscribed.from
    fill_in "To", with: @user_subscribed.to
    click_on "Create User subscribed"

    assert_text "User subscribed was successfully created"
    click_on "Back"
  end

  test "should update User subscribed" do
    visit user_subscribed_url(@user_subscribed)
    click_on "Edit this user subscribed", match: :first

    fill_in "From", with: @user_subscribed.from
    fill_in "To", with: @user_subscribed.to
    click_on "Update User subscribed"

    assert_text "User subscribed was successfully updated"
    click_on "Back"
  end

  test "should destroy User subscribed" do
    visit user_subscribed_url(@user_subscribed)
    click_on "Destroy this user subscribed", match: :first

    assert_text "User subscribed was successfully destroyed"
  end
end
