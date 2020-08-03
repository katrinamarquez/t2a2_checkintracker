require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "creating a Restaurant" do
    visit restaurants_url
    click_on "New Restaurant"

    fill_in "Restaurant address", with: @restaurant.restaurant_address
    fill_in "Restaurant email", with: @restaurant.restaurant_email
    fill_in "Restaurant name", with: @restaurant.restaurant_name
    fill_in "Restaurant phone", with: @restaurant.restaurant_phone
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant" do
    visit restaurants_url
    click_on "Edit", match: :first

    fill_in "Restaurant address", with: @restaurant.restaurant_address
    fill_in "Restaurant email", with: @restaurant.restaurant_email
    fill_in "Restaurant name", with: @restaurant.restaurant_name
    fill_in "Restaurant phone", with: @restaurant.restaurant_phone
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant" do
    visit restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant was successfully destroyed"
  end
end
