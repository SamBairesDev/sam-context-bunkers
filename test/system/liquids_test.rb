require "application_system_test_case"

class LiquidsTest < ApplicationSystemTestCase
  setup do
    @liquid = liquids(:one)
  end

  test "visiting the index" do
    visit liquids_url
    assert_selector "h1", text: "Liquids"
  end

  test "creating a Liquid" do
    visit liquids_url
    click_on "New Liquid"

    fill_in "Brand", with: @liquid.brand
    fill_in "Flavor", with: @liquid.flavor
    fill_in "Name", with: @liquid.name
    fill_in "Price", with: @liquid.price
    fill_in "Size", with: @liquid.size
    fill_in "Strength", with: @liquid.strength
    click_on "Create Liquid"

    assert_text "Liquid was successfully created"
    click_on "Back"
  end

  test "updating a Liquid" do
    visit liquids_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @liquid.brand
    fill_in "Flavor", with: @liquid.flavor
    fill_in "Name", with: @liquid.name
    fill_in "Price", with: @liquid.price
    fill_in "Size", with: @liquid.size
    fill_in "Strength", with: @liquid.strength
    click_on "Update Liquid"

    assert_text "Liquid was successfully updated"
    click_on "Back"
  end

  test "destroying a Liquid" do
    visit liquids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Liquid was successfully destroyed"
  end
end
