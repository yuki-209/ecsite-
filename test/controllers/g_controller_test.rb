require 'test_helper'

class GControllerTest < ActionDispatch::IntegrationTest
  test "should get support" do
    get g_support_url
    assert_response :success
  end

  test "should get index" do
    get g_index_url
    assert_response :success
  end

end
