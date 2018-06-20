require 'test_helper'

class IngpizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingpizza = ingpizzas(:one)
  end

  test "should get index" do
    get ingpizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_ingpizza_url
    assert_response :success
  end

  test "should create ingpizza" do
    assert_difference('Ingpizza.count') do
      post ingpizzas_url, params: { ingpizza: { ingredient_id: @ingpizza.ingredient_id, pizza_id: @ingpizza.pizza_id } }
    end

    assert_redirected_to ingpizza_url(Ingpizza.last)
  end

  test "should show ingpizza" do
    get ingpizza_url(@ingpizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingpizza_url(@ingpizza)
    assert_response :success
  end

  test "should update ingpizza" do
    patch ingpizza_url(@ingpizza), params: { ingpizza: { ingredient_id: @ingpizza.ingredient_id, pizza_id: @ingpizza.pizza_id } }
    assert_redirected_to ingpizza_url(@ingpizza)
  end

  test "should destroy ingpizza" do
    assert_difference('Ingpizza.count', -1) do
      delete ingpizza_url(@ingpizza)
    end

    assert_redirected_to ingpizzas_url
  end
end
