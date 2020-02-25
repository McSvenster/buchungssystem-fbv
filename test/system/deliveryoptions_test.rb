require "application_system_test_case"

class DeliveryoptionsTest < ApplicationSystemTestCase
  setup do
    @deliveryoption = deliveryoptions(:one)
  end

  test "visiting the index" do
    visit deliveryoptions_url
    assert_selector "h1", text: "Deliveryoptions"
  end

  test "creating a Deliveryoption" do
    visit deliveryoptions_url
    click_on "New Deliveryoption"

    fill_in "Deloption", with: @deliveryoption.deloption
    click_on "Create Deliveryoption"

    assert_text "Deliveryoption was successfully created"
    click_on "Back"
  end

  test "updating a Deliveryoption" do
    visit deliveryoptions_url
    click_on "Edit", match: :first

    fill_in "Deloption", with: @deliveryoption.deloption
    click_on "Update Deliveryoption"

    assert_text "Deliveryoption was successfully updated"
    click_on "Back"
  end

  test "destroying a Deliveryoption" do
    visit deliveryoptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deliveryoption was successfully destroyed"
  end
end
