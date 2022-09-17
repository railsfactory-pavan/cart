require 'test_helper'

class CartBasketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart_basket = cart_baskets(:one)
  end

  test "should get index" do
    get cart_baskets_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_basket_url
    assert_response :success
  end

  test "should create cart_basket" do
    assert_difference('CartBasket.count') do
      post cart_baskets_url, params: { cart_basket: {  } }
    end

    assert_redirected_to cart_basket_url(CartBasket.last)
  end

  test "should show cart_basket" do
    get cart_basket_url(@cart_basket)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_basket_url(@cart_basket)
    assert_response :success
  end

  test "should update cart_basket" do
    patch cart_basket_url(@cart_basket), params: { cart_basket: {  } }
    assert_redirected_to cart_basket_url(@cart_basket)
  end

  test "should destroy cart_basket" do
    assert_difference('CartBasket.count', -1) do
      delete cart_basket_url(@cart_basket)
    end

    assert_redirected_to cart_baskets_url
  end
end
