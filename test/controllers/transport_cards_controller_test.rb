require "test_helper"

class TransportCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_card = transport_cards(:one)
  end

  test "should get index" do
    get transport_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_transport_card_url
    assert_response :success
  end

  test "should create transport_card" do
    assert_difference("TransportCard.count") do
      post transport_cards_url, params: { transport_card: {} }
    end

    assert_redirected_to transport_card_url(TransportCard.last)
  end

  test "should show transport_card" do
    get transport_card_url(@transport_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_transport_card_url(@transport_card)
    assert_response :success
  end

  test "should update transport_card" do
    patch transport_card_url(@transport_card), params: { transport_card: {} }
    assert_redirected_to transport_card_url(@transport_card)
  end

  test "should destroy transport_card" do
    assert_difference("TransportCard.count", -1) do
      delete transport_card_url(@transport_card)
    end

    assert_redirected_to transport_cards_url
  end
end
