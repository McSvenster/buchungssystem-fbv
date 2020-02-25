require 'test_helper'

class DeliveryoptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deliveryoption = deliveryoptions(:one)
  end

  test "should get index" do
    get deliveryoptions_url
    assert_response :success
  end

  test "should get new" do
    get new_deliveryoption_url
    assert_response :success
  end

  test "should create deliveryoption" do
    assert_difference('Deliveryoption.count') do
      post deliveryoptions_url, params: { deliveryoption: { deloption: @deliveryoption.deloption } }
    end

    assert_redirected_to deliveryoption_url(Deliveryoption.last)
  end

  test "should show deliveryoption" do
    get deliveryoption_url(@deliveryoption)
    assert_response :success
  end

  test "should get edit" do
    get edit_deliveryoption_url(@deliveryoption)
    assert_response :success
  end

  test "should update deliveryoption" do
    patch deliveryoption_url(@deliveryoption), params: { deliveryoption: { deloption: @deliveryoption.deloption } }
    assert_redirected_to deliveryoption_url(@deliveryoption)
  end

  test "should destroy deliveryoption" do
    assert_difference('Deliveryoption.count', -1) do
      delete deliveryoption_url(@deliveryoption)
    end

    assert_redirected_to deliveryoptions_url
  end
end
