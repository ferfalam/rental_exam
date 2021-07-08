require "application_system_test_case"

class ProteriesTest < ApplicationSystemTestCase
  setup do
    @protery = proteries(:one)
  end

  test "visiting the index" do
    visit proteries_url
    assert_selector "h1", text: "Proteries"
  end

  test "creating a Protery" do
    visit proteries_url
    click_on "New Protery"

    fill_in "Address", with: @protery.address
    fill_in "Building age", with: @protery.building_age
    fill_in "Property", with: @protery.property
    fill_in "Remarks", with: @protery.remarks
    fill_in "Rent", with: @protery.rent
    click_on "Create Protery"

    assert_text "Protery was successfully created"
    click_on "Back"
  end

  test "updating a Protery" do
    visit proteries_url
    click_on "Edit", match: :first

    fill_in "Address", with: @protery.address
    fill_in "Building age", with: @protery.building_age
    fill_in "Property", with: @protery.property
    fill_in "Remarks", with: @protery.remarks
    fill_in "Rent", with: @protery.rent
    click_on "Update Protery"

    assert_text "Protery was successfully updated"
    click_on "Back"
  end

  test "destroying a Protery" do
    visit proteries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Protery was successfully destroyed"
  end
end
