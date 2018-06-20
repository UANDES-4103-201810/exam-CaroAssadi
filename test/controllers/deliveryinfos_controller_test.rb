require 'test_helper'

class DeliveryinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deliveryinfo = deliveryinfos(:one)
  end

  test "should get index" do
    get deliveryinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_deliveryinfo_url
    assert_response :success
  end

  test "should create deliveryinfo" do
    assert_difference('Deliveryinfo.count') do
      post deliveryinfos_url, params: { deliveryinfo: { address1: @deliveryinfo.address1, address2: @deliveryinfo.address2, order_id: @deliveryinfo.order_id, phone: @deliveryinfo.phone } }
    end

    assert_redirected_to deliveryinfo_url(Deliveryinfo.last)
  end

  test "should show deliveryinfo" do
    get deliveryinfo_url(@deliveryinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_deliveryinfo_url(@deliveryinfo)
    assert_response :success
  end

  test "should update deliveryinfo" do
    patch deliveryinfo_url(@deliveryinfo), params: { deliveryinfo: { address1: @deliveryinfo.address1, address2: @deliveryinfo.address2, order_id: @deliveryinfo.order_id, phone: @deliveryinfo.phone } }
    assert_redirected_to deliveryinfo_url(@deliveryinfo)
  end

  test "should destroy deliveryinfo" do
    assert_difference('Deliveryinfo.count', -1) do
      delete deliveryinfo_url(@deliveryinfo)
    end

    assert_redirected_to deliveryinfos_url
  end
end
