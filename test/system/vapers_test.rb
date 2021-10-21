require "application_system_test_case"

class VapersTest < ApplicationSystemTestCase
  setup do
    @vaper = vapers(:one)
  end

  test "visiting the index" do
    visit vapers_url
    assert_selector "h1", text: "Vapers"
  end

  test "creating a Vaper" do
    visit vapers_url
    click_on "New Vaper"

    fill_in "Brand", with: @vaper.brand
    fill_in "Name", with: @vaper.name
    fill_in "Price", with: @vaper.price
    fill_in "Waranty time", with: @vaper.waranty_time
    click_on "Create Vaper"

    assert_text "Vaper was successfully created"
    click_on "Back"
  end

  test "updating a Vaper" do
    visit vapers_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @vaper.brand
    fill_in "Name", with: @vaper.name
    fill_in "Price", with: @vaper.price
    fill_in "Waranty time", with: @vaper.waranty_time
    click_on "Update Vaper"

    assert_text "Vaper was successfully updated"
    click_on "Back"
  end

  test "destroying a Vaper" do
    visit vapers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vaper was successfully destroyed"
  end
end
