require "application_system_test_case"

class PlayListItemsTest < ApplicationSystemTestCase
  setup do
    @play_list_item = play_list_items(:one)
  end

  test "visiting the index" do
    visit play_list_items_url
    assert_selector "h1", text: "Play List Items"
  end

  test "creating a Play list item" do
    visit play_list_items_url
    click_on "New Play List Item"

    fill_in "Pair", with: @play_list_item.pair
    fill_in "Params", with: @play_list_item.params
    fill_in "Play list", with: @play_list_item.play_list_id
    click_on "Create Play list item"

    assert_text "Play list item was successfully created"
    click_on "Back"
  end

  test "updating a Play list item" do
    visit play_list_items_url
    click_on "Edit", match: :first

    fill_in "Pair", with: @play_list_item.pair
    fill_in "Params", with: @play_list_item.params
    fill_in "Play list", with: @play_list_item.play_list_id
    click_on "Update Play list item"

    assert_text "Play list item was successfully updated"
    click_on "Back"
  end

  test "destroying a Play list item" do
    visit play_list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Play list item was successfully destroyed"
  end
end
