require 'test_helper'

class OrderpizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderpizza = orderpizzas(:one)
  end

  test "should get index" do
    get orderpizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_orderpizza_url
    assert_response :success
  end

  test "should create orderpizza" do
    assert_difference('Orderpizza.count') do
      post orderpizzas_url, params: { orderpizza: { order_id: @orderpizza.order_id, payment: @orderpizza.payment, pizza_id: @orderpizza.pizza_id } }
    end

    assert_redirected_to orderpizza_url(Orderpizza.last)
  end

  test "should show orderpizza" do
    get orderpizza_url(@orderpizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderpizza_url(@orderpizza)
    assert_response :success
  end

  test "should update orderpizza" do
    patch orderpizza_url(@orderpizza), params: { orderpizza: { order_id: @orderpizza.order_id, payment: @orderpizza.payment, pizza_id: @orderpizza.pizza_id } }
    assert_redirected_to orderpizza_url(@orderpizza)
  end

  test "should destroy orderpizza" do
    assert_difference('Orderpizza.count', -1) do
      delete orderpizza_url(@orderpizza)
    end

    assert_redirected_to orderpizzas_url
  end
end
