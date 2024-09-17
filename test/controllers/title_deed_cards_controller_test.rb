require "test_helper"

class TitleDeedCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title_deed_card = title_deed_cards(:one)
  end

  test "should get index" do
    get title_deed_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_title_deed_card_url
    assert_response :success
  end

  test "should create title_deed_card" do
    assert_difference("TitleDeedCard.count") do
      post title_deed_cards_url, params: { title_deed_card: {} }
    end

    assert_redirected_to title_deed_card_url(TitleDeedCard.last)
  end

  test "should show title_deed_card" do
    get title_deed_card_url(@title_deed_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_title_deed_card_url(@title_deed_card)
    assert_response :success
  end

  test "should update title_deed_card" do
    patch title_deed_card_url(@title_deed_card), params: { title_deed_card: {} }
    assert_redirected_to title_deed_card_url(@title_deed_card)
  end

  test "should destroy title_deed_card" do
    assert_difference("TitleDeedCard.count", -1) do
      delete title_deed_card_url(@title_deed_card)
    end

    assert_redirected_to title_deed_cards_url
  end
end
