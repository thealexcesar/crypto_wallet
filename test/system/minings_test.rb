require "application_system_test_case"

class MiningsTest < ApplicationSystemTestCase
  setup do
    @mining = minings(:one)
  end

  test "visiting the index" do
    visit minings_url
    assert_selector "h1", text: "Minings"
  end

  test "creating a Mining" do
    visit minings_url
    click_on "New Mining"

    fill_in "Acronym", with: @mining.acronym
    fill_in "Description", with: @mining.description
    click_on "Create Mining"

    assert_text "Mining was successfully created"
    click_on "Back"
  end

  test "updating a Mining" do
    visit minings_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @mining.acronym
    fill_in "Description", with: @mining.description
    click_on "Update Mining"

    assert_text "Mining was successfully updated"
    click_on "Back"
  end

  test "destroying a Mining" do
    visit minings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mining was successfully destroyed"
  end
end
