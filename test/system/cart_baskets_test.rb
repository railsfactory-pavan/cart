require "application_system_test_case"

class CartBasketsTest < ApplicationSystemTestCase
  setup do
    @cart_basket = cart_baskets(:one)
  end

  test "visiting the index" do
    visit cart_baskets_url
    assert_selector "h1", text: "Cart Baskets"
  end

  test "creating a Cart basket" do
    visit cart_baskets_url
    click_on "New Cart Basket"

    click_on "Create Cart basket"

    assert_text "Cart basket was successfully created"
    click_on "Back"
  end

  test "updating a Cart basket" do
    visit cart_baskets_url
    click_on "Edit", match: :first

    click_on "Update Cart basket"

    assert_text "Cart basket was successfully updated"
    click_on "Back"
  end

  test "destroying a Cart basket" do
    visit cart_baskets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cart basket was successfully destroyed"
  end
end
