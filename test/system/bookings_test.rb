require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "creating a Booking" do
    visit bookings_url
    click_on "New Booking"

    check "Approved" if @booking.approved
    fill_in "Bdate", with: @booking.bdate
    fill_in "Birthdate", with: @booking.birthdate
    fill_in "Btime", with: @booking.btime
    fill_in "Company", with: @booking.company_id
    fill_in "Created by", with: @booking.created_by
    fill_in "Ddate", with: @booking.ddate
    check "Deleted" if @booking.deleted
    fill_in "Deliveryoption", with: @booking.deliveryoption_id
    fill_in "Fname", with: @booking.fname
    fill_in "Lname", with: @booking.lname
    fill_in "Lsdate", with: @booking.lsdate
    fill_in "Lwohnort", with: @booking.lwohnort
    check "Provided" if @booking.provided
    fill_in "Wludate", with: @booking.wludate
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "updating a Booking" do
    visit bookings_url
    click_on "Edit", match: :first

    check "Approved" if @booking.approved
    fill_in "Bdate", with: @booking.bdate
    fill_in "Birthdate", with: @booking.birthdate
    fill_in "Btime", with: @booking.btime
    fill_in "Company", with: @booking.company_id
    fill_in "Created by", with: @booking.created_by
    fill_in "Ddate", with: @booking.ddate
    check "Deleted" if @booking.deleted
    fill_in "Deliveryoption", with: @booking.deliveryoption_id
    fill_in "Fname", with: @booking.fname
    fill_in "Lname", with: @booking.lname
    fill_in "Lsdate", with: @booking.lsdate
    fill_in "Lwohnort", with: @booking.lwohnort
    check "Provided" if @booking.provided
    fill_in "Wludate", with: @booking.wludate
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking" do
    visit bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking was successfully destroyed"
  end
end
