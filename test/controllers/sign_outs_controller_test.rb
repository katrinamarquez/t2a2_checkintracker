require 'test_helper'

class SignOutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sign_out = sign_outs(:one)
  end

  test "should get index" do
    get sign_outs_url
    assert_response :success
  end

  test "should get new" do
    get new_sign_out_url
    assert_response :success
  end

  test "should create sign_out" do
    assert_difference('SignOut.count') do
      post sign_outs_url, params: { sign_out: { date_out: @sign_out.date_out, out_comments: @sign_out.out_comments, time_out: @sign_out.time_out } }
    end

    assert_redirected_to sign_out_url(SignOut.last)
  end

  test "should show sign_out" do
    get sign_out_url(@sign_out)
    assert_response :success
  end

  test "should get edit" do
    get edit_sign_out_url(@sign_out)
    assert_response :success
  end

  test "should update sign_out" do
    patch sign_out_url(@sign_out), params: { sign_out: { date_out: @sign_out.date_out, out_comments: @sign_out.out_comments, time_out: @sign_out.time_out } }
    assert_redirected_to sign_out_url(@sign_out)
  end

  test "should destroy sign_out" do
    assert_difference('SignOut.count', -1) do
      delete sign_out_url(@sign_out)
    end

    assert_redirected_to sign_outs_url
  end
end
