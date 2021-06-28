require "test_helper"

class PlayListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @play_list_item = play_list_items(:one)
  end

  test "should get index" do
    get play_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_play_list_item_url
    assert_response :success
  end

  test "should create play_list_item" do
    assert_difference('PlayListItem.count') do
      post play_list_items_url, params: { play_list_item: { pair: @play_list_item.pair, params: @play_list_item.params, play_list_id: @play_list_item.play_list_id } }
    end

    assert_redirected_to play_list_item_url(PlayListItem.last)
  end

  test "should show play_list_item" do
    get play_list_item_url(@play_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_play_list_item_url(@play_list_item)
    assert_response :success
  end

  test "should update play_list_item" do
    patch play_list_item_url(@play_list_item), params: { play_list_item: { pair: @play_list_item.pair, params: @play_list_item.params, play_list_id: @play_list_item.play_list_id } }
    assert_redirected_to play_list_item_url(@play_list_item)
  end

  test "should destroy play_list_item" do
    assert_difference('PlayListItem.count', -1) do
      delete play_list_item_url(@play_list_item)
    end

    assert_redirected_to play_list_items_url
  end
end
