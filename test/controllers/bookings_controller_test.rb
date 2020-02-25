require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { approved: @booking.approved, bdate: @booking.bdate, birthdate: @booking.birthdate, btime: @booking.btime, company_id: @booking.company_id, created_by: @booking.created_by, ddate: @booking.ddate, deleted: @booking.deleted, deliveryoption_id: @booking.deliveryoption_id, fname: @booking.fname, lname: @booking.lname, lsdate: @booking.lsdate, lwohnort: @booking.lwohnort, provided: @booking.provided, wludate: @booking.wludate } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { approved: @booking.approved, bdate: @booking.bdate, birthdate: @booking.birthdate, btime: @booking.btime, company_id: @booking.company_id, created_by: @booking.created_by, ddate: @booking.ddate, deleted: @booking.deleted, deliveryoption_id: @booking.deliveryoption_id, fname: @booking.fname, lname: @booking.lname, lsdate: @booking.lsdate, lwohnort: @booking.lwohnort, provided: @booking.provided, wludate: @booking.wludate } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
