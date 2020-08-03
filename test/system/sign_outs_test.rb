require "application_system_test_case"

class SignOutsTest < ApplicationSystemTestCase
  setup do
    @sign_out = sign_outs(:one)
  end

  test "visiting the index" do
    visit sign_outs_url
    assert_selector "h1", text: "Sign Outs"
  end

  test "creating a Sign out" do
    visit sign_outs_url
    click_on "New Sign Out"

    fill_in "Date out", with: @sign_out.date_out
    fill_in "Out comments", with: @sign_out.out_comments
    fill_in "Time out", with: @sign_out.time_out
    click_on "Create Sign out"

    assert_text "Sign out was successfully created"
    click_on "Back"
  end

  test "updating a Sign out" do
    visit sign_outs_url
    click_on "Edit", match: :first

    fill_in "Date out", with: @sign_out.date_out
    fill_in "Out comments", with: @sign_out.out_comments
    fill_in "Time out", with: @sign_out.time_out
    click_on "Update Sign out"

    assert_text "Sign out was successfully updated"
    click_on "Back"
  end

  test "destroying a Sign out" do
    visit sign_outs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sign out was successfully destroyed"
  end
end
