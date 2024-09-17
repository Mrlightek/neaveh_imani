require "test_helper"

class MoneyPacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_pack = money_packs(:one)
  end

  test "should get index" do
    get money_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_money_pack_url
    assert_response :success
  end

  test "should create money_pack" do
    assert_difference("MoneyPack.count") do
      post money_packs_url, params: { money_pack: {} }
    end

    assert_redirected_to money_pack_url(MoneyPack.last)
  end

  test "should show money_pack" do
    get money_pack_url(@money_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_pack_url(@money_pack)
    assert_response :success
  end

  test "should update money_pack" do
    patch money_pack_url(@money_pack), params: { money_pack: {} }
    assert_redirected_to money_pack_url(@money_pack)
  end

  test "should destroy money_pack" do
    assert_difference("MoneyPack.count", -1) do
      delete money_pack_url(@money_pack)
    end

    assert_redirected_to money_packs_url
  end
end
