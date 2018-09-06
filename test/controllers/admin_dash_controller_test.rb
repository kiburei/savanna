require 'test_helper'

class AdminDashControllerTest < ActionDispatch::IntegrationTest
  test "should get add_dist" do
    get admin_dash_add_dist_url
    assert_response :success
  end

  test "should get remove_dist" do
    get admin_dash_remove_dist_url
    assert_response :success
  end

  test "should get orders" do
    get admin_dash_orders_url
    assert_response :success
  end

end
