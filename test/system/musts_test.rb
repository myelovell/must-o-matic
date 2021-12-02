require "application_system_test_case"

class MustsTest < ApplicationSystemTestCase
  setup do
    @must = musts(:one)
  end

  test "visiting the index" do
    visit musts_url
    assert_selector "h1", text: "Musts"
  end

  test "creating a Must" do
    visit musts_url
    click_on "New Must"

    fill_in "Manufacturer", with: @must.manufacturer
    fill_in "Name", with: @must.name
    fill_in "Price", with: @must.price
    fill_in "Volume", with: @must.volume
    click_on "Create Must"

    assert_text "Must was successfully created"
    click_on "Back"
  end

  test "updating a Must" do
    visit musts_url
    click_on "Edit", match: :first

    fill_in "Manufacturer", with: @must.manufacturer
    fill_in "Name", with: @must.name
    fill_in "Price", with: @must.price
    fill_in "Volume", with: @must.volume
    click_on "Update Must"

    assert_text "Must was successfully updated"
    click_on "Back"
  end

  test "destroying a Must" do
    visit musts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Must was successfully destroyed"
  end
end
